package com.company;

import java.io.File;
import java.io.FileFilter;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by kgalligan on 3/5/16.
 */
public class BuildBash
{
	public static void main(String[] args)
	{
		File file = new File(args[args.length - 1]);
		List<File> allJavaFiles = new ArrayList<>();
		addRecursive(file, allJavaFiles);

		File buildLibsDir = new File(args[args.length - 2]);

		File[] buildLibs = buildLibsDir.listFiles(new FileFilter()
		{
			@Override
			public boolean accept(File pathname)
			{
				return pathname.getName().endsWith(".jar");
			}
		});

		StringBuilder sb = new StringBuilder();



		for(int i=0; i<(args.length-2); i++)
		{
			sb.append(args[i]).append(' ');
		}

		if(buildLibs.length > 0)
		{
			sb.append("-classpath ");
			boolean first = true;

			for (File buildLib : buildLibs)
			{
				if(first)
				{
					first = false;
				}
				else
				{
					sb.append(":");
				}
				sb.append(buildLib.getPath());
			}

			sb.append(" ");
		}

		for (File allJavaFile : allJavaFiles)
		{
			sb.append("'").append(allJavaFile.getPath()).append("' ");
		}

		System.out.println(sb.toString());
	}

	private static void addRecursive(File path, List<File> allJavaFiles)
	{
		File[] files = path.listFiles();
		for (File file : files)
		{
			if(file.isDirectory())
			{
				addRecursive(file, allJavaFiles);
			}
			else
			{
				if(file.getName().endsWith(".java"))
					allJavaFiles.add(file);
			}
		}
	}
}