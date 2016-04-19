package com.littleinc.orm_benchmark.greendao;

import java.io.File;

import de.greenrobot.daogenerator.DaoGenerator;
import de.greenrobot.daogenerator.Entity;
import de.greenrobot.daogenerator.Property;
import de.greenrobot.daogenerator.Schema;

/**
 * Created by kgalligan on 10/19/15.
 */
public class Generator
{
    // DB CONFIG
    private static int DB_VERSION = 2;

    private static String PACKAGE = "com.littleinc.orm_benchmark.greendao";

    // USER TABLE
    private static final String USER_ENTITY = "GreenUser";

    public static final String LAST_NAME_COLUMN = "last_name";

    public static final String FIRST_NAME_COLUMN = "first_name";

    // MESSAGE TABLE
    private static final String MESSAGE_ENTITY = "GreenMessage";

    private static final String CONTENT = "content";

    private static final String READERS = "readers";

    private static final String SORTED_BY = "sorted_by";

    private static final String CLIENT_ID = "client_id";

    private static final String SENDER_ID = "sender_id";

    private static final String CHANNEL_ID = "channel_id";

    private static final String COMMAND_ID = "command_id";

    private static final String CREATED_AT = "created_at";

    public static void main(String[] args) {
        Schema schema = new Schema(DB_VERSION, PACKAGE);

        Entity user = schema.addEntity(USER_ENTITY);
        Property userPk = addCommonColumns(user);

        Entity message = schema.addEntity(MESSAGE_ENTITY);
        message.addIdProperty().autoincrement();
        message.addStringProperty(CONTENT);
        message.addLongProperty(CLIENT_ID);
        message.addIntProperty(CREATED_AT);
        message.addDoubleProperty(SORTED_BY);
        message.addLongProperty(COMMAND_ID).index();
        message.addLongProperty(SENDER_ID).notNull();
        message.addLongProperty(CHANNEL_ID).notNull();

//        // One-to-many relationship
//        message.addToMany(user, userPk, READERS);

        try {
            File thisdir = new File(".");
            System.out.println("asdfasdf: "+ thisdir.getAbsolutePath());
            new DaoGenerator().generateAll(schema, "javalib/src/main/java");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private static Property addCommonColumns(Entity entity) {
        entity.addStringProperty(LAST_NAME_COLUMN);
        entity.addStringProperty(FIRST_NAME_COLUMN);
        return entity.addIdProperty().autoincrement().getProperty();
    }
}
