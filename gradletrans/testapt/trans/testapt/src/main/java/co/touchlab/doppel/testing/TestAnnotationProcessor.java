package co.touchlab.doppel.testing;
import com.squareup.javapoet.ClassName;
import com.squareup.javapoet.JavaFile;
import com.squareup.javapoet.MethodSpec;
import com.squareup.javapoet.TypeSpec;

import org.junit.runner.JUnitCore;
import org.junit.runner.Result;

import java.io.IOException;
import java.util.LinkedHashSet;
import java.util.Set;

import javax.annotation.processing.AbstractProcessor;
import javax.annotation.processing.Filer;
import javax.annotation.processing.Messager;
import javax.annotation.processing.ProcessingEnvironment;
import javax.annotation.processing.RoundEnvironment;
import javax.lang.model.SourceVersion;
import javax.lang.model.element.Element;
import javax.lang.model.element.Modifier;
import javax.lang.model.element.TypeElement;
import javax.lang.model.util.Elements;
import javax.lang.model.util.Types;
import javax.tools.Diagnostic;

/**
 * Created by kgalligan on 6/13/16.
 */
public class TestAnnotationProcessor extends AbstractProcessor
{
    //    private static final int DEFAULT_MAX_EAGER_FOREIGN_COLLECTION_LEVEL = ForeignCollectionField.DEFAULT_MAX_EAGER_LEVEL;

    private Types typeUtils;
    private Filer filer;
    private Messager messager;
    private Elements elementUtils;

    @Override
    public synchronized void init(ProcessingEnvironment processingEnv)
    {
        super.init(processingEnv);
        typeUtils = processingEnv.getTypeUtils();
        elementUtils = processingEnv.getElementUtils();
        filer = processingEnv.getFiler();
        messager = processingEnv.getMessager();
    }

    @Override
    public boolean process(Set<? extends TypeElement> annotations, RoundEnvironment roundEnv)
    {
//        if(true)
//            throw new RuntimeException("Balls");
        try
        {
            messager.printMessage(Diagnostic.Kind.NOTE, "Is running");
            return safeProcess(roundEnv);
        } catch (Exception e)
        {
            /*StringWriter sq = new StringWriter();
            PrintWriter printWriter = new PrintWriter(sq);
            e.printStackTrace(printWriter);
            File debugOut = new File("/Users/kgalligan/temp/apterror.txt");
            try
            {
                FileWriter fileWriter = new FileWriter(debugOut);
                fileWriter.append(sq.toString());
                fileWriter.close();
            }
            catch (IOException e1)
            {
                //
            }*/
            messager.printMessage(Diagnostic.Kind.ERROR,
                    "(Failed in annotation processing) "+ e.getClass().getName() + "/" + e.getMessage()
                    + "\n\n");
//            return true;
            throw new RuntimeException(e);
        }
    }

    private boolean safeProcess(RoundEnvironment roundEnv)
    {
        Set<? extends Element> matchingElements = roundEnv.getElementsAnnotatedWith(DoppelTest.class);
        if(matchingElements.size() == 0)
        {
            messager.printMessage(Diagnostic.Kind.NOTE, "No test matches");
            return false;
        }
        else
        {
            messager.printMessage(Diagnostic.Kind.NOTE, "matching "+ matchingElements.size());
        }

        ClassName allTests = ClassName.get("", "AllTests");

        TypeSpec.Builder configBuilder = TypeSpec.classBuilder(allTests.simpleName())
                .addModifiers(Modifier.PUBLIC, Modifier.FINAL);

        MethodSpec.Builder runTestsMethodBuilder = MethodSpec.methodBuilder("runTests")
                .addModifiers(Modifier.PUBLIC, Modifier.STATIC);

        StringBuilder sb = new StringBuilder();

        for (Element annotatedElement : matchingElements)
        {
            if(sb.length() > 0)
                sb.append(",\n");

            TypeElement typeElement = (TypeElement) annotatedElement;
            sb.append(typeElement.getQualifiedName().toString()).append(".class");
        }

        runTestsMethodBuilder.addStatement("$T junit = new $T()", JUnitCore.class, JUnitCore.class);
        runTestsMethodBuilder.addStatement("$T result = junit.run("+ sb.toString() +")", Result.class);

        configBuilder.addMethod(runTestsMethodBuilder.build());

        JavaFile javaFile = JavaFile.builder(allTests.packageName(), configBuilder.build()).build();

        try
        {
            javaFile.writeTo(filer);
        } catch (IOException e)
        {
            messager.printMessage(
                    Diagnostic.Kind.ERROR,
                    "Code gen failed: " + e
            );
            return false;
        }

        return false;
    }

    /*private void error(Element e, String msg, Object... args)
    {
        messager.printMessage(
                Diagnostic.Kind.ERROR,
                String.format(msg, args),
                e
        );
    }*/

    @Override
    public Set<String> getSupportedAnnotationTypes()
    {
        Set<String> annotations = new LinkedHashSet<String>();
        annotations.add(DoppelTest.class.getCanonicalName());
        return annotations;
    }

    @Override
    public SourceVersion getSupportedSourceVersion()
    {
        return SourceVersion.latestSupported();
    }
}
