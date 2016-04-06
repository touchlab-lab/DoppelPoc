/*
 * Licensed to the Apache Software Foundation (ASF) under one or more
 * contributor license agreements.  See the NOTICE file distributed with
 * this work for additional information regarding copyright ownership.
 * The ASF licenses this file to You under the Apache License, Version 2.0
 * (the "License"); you may not use this file except in compliance with
 * the License.  You may obtain a copy of the License at
 * 
 *      http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.apache.commons.io;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import junit.framework.Test;
import junit.framework.TestSuite;
import junit.textui.TestRunner;

import org.apache.commons.io.testtools.FileBasedTestCase;

/**
 * Test cases for FileUtils.cleanDirectory() method.
 *
 * @version $Id$
 * @author Chris Eldredge
 */
public class FileUtilsCleanDirectoryTestCase extends FileBasedTestCase {
    final File top = getLocalTestDirectory();

    public static void main(String[] args) {
        TestRunner.run(suite());
    }

    public static Test suite() {
        return new TestSuite(FileUtilsCleanDirectoryTestCase.class);
    }

    public FileUtilsCleanDirectoryTestCase(String name) {
        super(name);
    }

    private File getLocalTestDirectory() {
        return new File(getTestDirectory(), "list-files");
    }

    /**
     * @see junit.framework.TestCase#setUp()
     */
    protected void setUp() throws Exception {
        top.mkdirs();
    }

    /**
     * @see junit.framework.TestCase#tearDown()
     */
    protected void tearDown() throws Exception {
        FileUtils.deleteDirectory(top);
    }

    //-----------------------------------------------------------------------
    public void testCleanEmpty() throws Exception {
        assertEquals(0, top.list().length);

        FileUtils.cleanDirectory(top);

        assertEquals(0, top.list().length);
    }

    public void testDeletesRegular() throws Exception {
        FileUtils.touch(new File(top, "regular"));
        FileUtils.touch(new File(top, ".hidden"));

        assertEquals(2, top.list().length);

        FileUtils.cleanDirectory(top);

        assertEquals(0, top.list().length);
    }

    public void testDeletesNested() throws Exception {
        final File nested = new File(top, "nested");

        assertTrue(nested.mkdirs());

        FileUtils.touch(new File(nested, "file"));

        assertEquals(1, top.list().length);

        FileUtils.cleanDirectory(top);

        assertEquals(0, top.list().length);
    }

   

}
