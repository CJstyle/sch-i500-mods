.class public Lcom/android/providers/settings/DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelper.java"


# static fields
.field private static final askon:[B

.field private static final kies:[B

.field private static final mValidTables:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mtp:[B

.field private static final ums:[B


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 68
    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/providers/settings/DatabaseHelper;->kies:[B

    .line 69
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/providers/settings/DatabaseHelper;->mtp:[B

    .line 70
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/providers/settings/DatabaseHelper;->ums:[B

    .line 71
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/providers/settings/DatabaseHelper;->askon:[B

    .line 86
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    .line 89
    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    const-string v1, "system"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    const-string v1, "secure"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 91
    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    const-string v1, "bluetooth_devices"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 92
    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    const-string v1, "bookmarks"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    const-string v1, "favorites"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    const-string v1, "gservices"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 97
    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    const-string v1, "old_favorites"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 98
    return-void

    .line 68
    :array_0
    .array-data 0x1
        0x4bt
        0x49t
        0x45t
        0x53t
        0x0t
    .end array-data

    .line 69
    nop

    :array_1
    .array-data 0x1
        0x4dt
        0x54t
        0x50t
        0x0t
    .end array-data

    .line 70
    :array_2
    .array-data 0x1
        0x55t
        0x4dt
        0x53t
        0x0t
    .end array-data

    .line 71
    :array_3
    .array-data 0x1
        0x41t
        0x53t
        0x4bt
        0x4ft
        0x4et
        0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 101
    const-string v0, "settings.db"

    const/4 v1, 0x0

    const/16 v2, 0x39

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 102
    iput-object p1, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    .line 103
    return-void
.end method

.method private createSecureTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 110
    const-string v0, "CREATE TABLE secure (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT UNIQUE ON CONFLICT REPLACE,value TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 115
    const-string v0, "CREATE INDEX secureIndex1 ON secure (name);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method private isKiesEnabled(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 1394
    .line 1396
    const-string v1, "secure"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v8

    const-string v0, "value"

    aput-object v0, v2, v9

    const-string v3, "name=\'tool_launcher_mode\'"

    move-object v0, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1398
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1399
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1400
    const-string v2, "SettingsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isKiesEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1404
    if-nez v1, :cond_0

    move v0, v9

    .line 1409
    :goto_1
    return v0

    :cond_0
    move v0, v8

    goto :goto_1

    :cond_1
    move v1, v8

    goto :goto_0
.end method

.method public static isValidTable(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 106
    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private loadBookmarks(Landroid/database/sqlite/SQLiteDatabase;I)I
    .locals 24
    .parameter "db"
    .parameter "startingIndex"

    .prologue
    .line 890
    new-instance v11, Landroid/content/Intent;

    const-string v21, "android.intent.action.MAIN"

    const/16 v22, 0x0

    move-object v0, v11

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 891
    .local v11, intent:Landroid/content/Intent;
    const-string v21, "android.intent.category.LAUNCHER"

    move-object v0, v11

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 892
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 894
    .local v20, values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 895
    .local v13, packageManager:Landroid/content/pm/PackageManager;
    move/from16 v9, p2

    .line 898
    .local v9, i:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const/high16 v22, 0x7f03

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v15

    .line 899
    .local v15, parser:Landroid/content/res/XmlResourceParser;
    const-string v21, "bookmarks"

    move-object v0, v15

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 901
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    .line 905
    .local v6, depth:I
    :cond_0
    :goto_0
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v19

    .local v19, type:I
    const/16 v21, 0x3

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v21

    move/from16 v0, v21

    move v1, v6

    if-le v0, v1, :cond_2

    :cond_1
    const/16 v21, 0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_2

    .line 907
    const/16 v21, 0x2

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 911
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 912
    .local v12, name:Ljava/lang/String;
    const-string v21, "bookmark"

    move-object/from16 v0, v21

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_3

    .line 957
    .end local v6           #depth:I
    .end local v12           #name:Ljava/lang/String;
    .end local v15           #parser:Landroid/content/res/XmlResourceParser;
    .end local v19           #type:I
    :cond_2
    :goto_1
    return v9

    .line 916
    .restart local v6       #depth:I
    .restart local v12       #name:Ljava/lang/String;
    .restart local v15       #parser:Landroid/content/res/XmlResourceParser;
    .restart local v19       #type:I
    :cond_3
    const/16 v21, 0x0

    const-string v22, "package"

    move-object v0, v15

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 917
    .local v16, pkg:Ljava/lang/String;
    const/16 v21, 0x0

    const-string v22, "class"

    move-object v0, v15

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 918
    .local v4, cls:Ljava/lang/String;
    const/16 v21, 0x0

    const-string v22, "shortcut"

    move-object v0, v15

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 920
    .local v17, shortcutStr:Ljava/lang/String;
    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v18

    .line 921
    .local v18, shortcutValue:I
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 922
    const-string v21, "SettingsProvider"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Unable to get shortcut for: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    :cond_4
    const/4 v10, 0x0

    .line 926
    .local v10, info:Landroid/content/pm/ActivityInfo;
    new-instance v5, Landroid/content/ComponentName;

    move-object v0, v5

    move-object/from16 v1, v16

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 928
    .local v5, cn:Landroid/content/ComponentName;
    const/16 v21, 0x0

    :try_start_1
    move-object v0, v13

    move-object v1, v5

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v10

    .line 940
    :goto_2
    if-eqz v10, :cond_0

    .line 941
    :try_start_2
    invoke-virtual {v11, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 942
    const/high16 v21, 0x1000

    move-object v0, v11

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 943
    const-string v21, "intent"

    const/16 v22, 0x0

    move-object v0, v11

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    const-string v21, "title"

    invoke-virtual {v10, v13}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    const-string v21, "shortcut"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 947
    const-string v21, "bookmarks"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 948
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 929
    :catch_0
    move-exception v7

    .line 930
    .local v7, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v16, v21, v22

    move-object v0, v13

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 932
    .local v14, packages:[Ljava/lang/String;
    new-instance v5, Landroid/content/ComponentName;

    .end local v5           #cn:Landroid/content/ComponentName;
    const/16 v21, 0x0

    aget-object v21, v14, v21

    move-object v0, v5

    move-object/from16 v1, v21

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 934
    .restart local v5       #cn:Landroid/content/ComponentName;
    const/16 v21, 0x0

    :try_start_3
    move-object v0, v13

    move-object v1, v5

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v10

    goto :goto_2

    .line 935
    :catch_1
    move-exception v8

    .line 936
    .local v8, e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_4
    const-string v21, "SettingsProvider"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Unable to add bookmark: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_2

    .line 951
    .end local v4           #cls:Ljava/lang/String;
    .end local v5           #cn:Landroid/content/ComponentName;
    .end local v6           #depth:I
    .end local v7           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v8           #e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v10           #info:Landroid/content/pm/ActivityInfo;
    .end local v12           #name:Ljava/lang/String;
    .end local v14           #packages:[Ljava/lang/String;
    .end local v15           #parser:Landroid/content/res/XmlResourceParser;
    .end local v16           #pkg:Ljava/lang/String;
    .end local v17           #shortcutStr:Ljava/lang/String;
    .end local v18           #shortcutValue:I
    .end local v19           #type:I
    :catch_2
    move-exception v21

    move-object/from16 v7, v21

    .line 952
    .local v7, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v21, "SettingsProvider"

    const-string v22, "Got execption parsing bookmarks."

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 953
    .end local v7           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_3
    move-exception v21

    move-object/from16 v7, v21

    .line 954
    .local v7, e:Ljava/io/IOException;
    const-string v21, "SettingsProvider"

    const-string v22, "Got execption parsing bookmarks."

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method

.method private loadBookmarks(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 966
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/providers/settings/DatabaseHelper;->loadBookmarks(Landroid/database/sqlite/SQLiteDatabase;I)I

    .line 967
    return-void
.end method

.method private loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V
    .locals 1
    .parameter "stmt"
    .parameter "key"
    .parameter "resid"

    .prologue
    .line 1299
    iget-object v0, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1301
    return-void

    .line 1299
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method private loadDefaultAnimationSettings(Landroid/database/sqlite/SQLiteStatement;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1187
    const-string v0, "window_animation_scale"

    const/high16 v1, 0x7f07

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadFractionSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;II)V

    .line 1189
    const-string v0, "transition_animation_scale"

    const v1, 0x7f070001

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadFractionSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;II)V

    .line 1191
    return-void
.end method

.method private loadDefaultHapticSettings(Landroid/database/sqlite/SQLiteStatement;)V
    .locals 2
    .parameter

    .prologue
    .line 1194
    const-string v0, "haptic_feedback_enabled"

    const v1, 0x7f040005

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1196
    return-void
.end method

.method private loadFractionSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;II)V
    .locals 1
    .parameter "stmt"
    .parameter "key"
    .parameter "resid"
    .parameter "base"

    .prologue
    .line 1309
    iget-object v0, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3, p4, p4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1311
    return-void
.end method

.method private loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V
    .locals 1
    .parameter "stmt"
    .parameter "key"
    .parameter "resid"

    .prologue
    .line 1304
    iget-object v0, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1306
    return-void
.end method

.method private loadSecure35Settings(Landroid/database/sqlite/SQLiteStatement;)V
    .locals 2
    .parameter

    .prologue
    .line 1281
    const-string v0, "backup_enabled"

    const v1, 0x7f04000c

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1284
    const-string v0, "backup_transport"

    const v1, 0x7f060003

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1286
    return-void
.end method

.method private loadSecureSettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1199
    const/4 v0, 0x0

    .line 1201
    :try_start_0
    const-string v1, "INSERT OR IGNORE INTO secure(name,value) VALUES(?,?);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1204
    :try_start_1
    const-string v1, "bluetooth_on"

    const v2, 0x7f040006

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1208
    const-string v1, "data_roaming"

    const-string v2, "true"

    const-string v3, "ro.com.android.dataroaming"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v5

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1213
    const-string v1, "install_non_market_apps"

    const v2, 0x7f040007

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1216
    const-string v1, "location_providers_allowed"

    const v2, 0x7f060002

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1219
    const-string v1, "assisted_gps_enabled"

    const v2, 0x7f040008

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1222
    const-string v1, "network_preference"

    const v2, 0x7f050002

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1225
    const-string v1, "usb_mass_storage_enabled"

    const v2, 0x7f040009

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1228
    const-string v1, "wifi_on"

    const v2, 0x7f04000a

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1230
    const-string v1, "wifi_networks_available_notification_on"

    const v2, 0x7f04000b

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1233
    const-string v1, "ro.com.android.wifi-watchlist"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1234
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1235
    const-string v2, "wifi_watchdog_watch_list"

    invoke-direct {p0, v0, v2, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1239
    :cond_0
    const-string v1, "ro.telephony.default_network"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1241
    const-string v2, "preferred_network_mode"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v2, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1244
    const-string v1, "cdma_cell_broadcast_sms"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1248
    const-string v1, "preferred_cdma_subscription"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1256
    const-string v1, "mock_location"

    const-string v2, "1"

    const-string v3, "ro.allow.mock.location"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v5

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1260
    const-string v1, "usb_setting_mode"

    const/4 v2, 0x4		# djp952: was 0x2 [UMS], 0x4 is [ASKON]

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1262
    invoke-direct {p0, v0}, Lcom/android/providers/settings/DatabaseHelper;->loadSecure35Settings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 1264
    const-string v1, "mount_play_not_snd"

    const v2, 0x7f04000e

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1267
    const-string v1, "mount_ums_autostart"

    const v2, 0x7f04000f

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1270
    const-string v1, "mount_ums_prompt"

    const v2, 0x7f040010

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1273
    const-string v1, "mount_ums_notify_enabled"

    const v2, 0x7f040011

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1276
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1278
    :cond_1
    return-void

    :cond_2
    move v2, v6

    .line 1208
    goto/16 :goto_0

    :cond_3
    move v2, v6

    .line 1256
    goto :goto_1

    .line 1276
    :catchall_0
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_2
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_4
    throw v0

    :catchall_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_2
.end method

.method private loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter "stmt"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1289
    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1290
    const/4 v0, 0x2

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1291
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1292
    return-void
.end method

.method private loadSettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 1045
    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->loadSystemSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1046
    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->loadSecureSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1047
    return-void
.end method

.method private loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V
    .locals 1
    .parameter "stmt"
    .parameter "key"
    .parameter "resid"

    .prologue
    .line 1295
    iget-object v0, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1296
    return-void
.end method

.method private loadSystemSettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "notifications_use_ring_volume"

    .line 1050
    const/4 v0, 0x0

    .line 1052
    :try_start_0
    const-string v1, "INSERT OR IGNORE INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1055
    :try_start_1
    const-string v1, "dim_screen"

    const/high16 v2, 0x7f04

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1057
    const-string v1, "stay_on_while_plugged_in"

    const-string v2, "1"

    const-string v3, "ro.kernel.qemu"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v5

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1059
    const-string v1, "screen_off_timeout"

    const/high16 v2, 0x7f05

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1063
    const-string v1, "emergency_tone"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1066
    const-string v1, "call_auto_retry"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1069
    const-string v1, "dtmf_tone"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1070
    const-string v1, "dtmf_tone_type"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1073
    const-string v1, "sound_effects_enabled"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1076
    const-string v1, "hearing_aid"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1079
    const-string v1, "tty_mode"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1081
    const-string v1, "airplane_mode_on"

    const v2, 0x7f040001

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1084
    const-string v1, "airplane_mode_radios"

    const/high16 v2, 0x7f06

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1087
    const-string v1, "airplane_mode_toggleable_radios"

    const v2, 0x7f060001

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1090
    const-string v1, "auto_time"

    const v2, 0x7f040002

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1093
    const-string v1, "screen_brightness"

    const v2, 0x7f050001

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1096
    const-string v1, "screen_brightness_mode"

    const v2, 0x7f040004

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1099
    invoke-direct {p0, v0}, Lcom/android/providers/settings/DatabaseHelper;->loadDefaultAnimationSettings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 1101
    const-string v1, "accelerometer_rotation"

    const v2, 0x7f040003

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1104
    const-string v1, "uartapcpmode"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1107
    const-string v1, "usbapcpmode"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1110
    const-string v1, "VIB_FEEDBACK_MAGNITUDE"

    const/16 v2, 0x25e4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1113
    const-string v1, "VIB_RECVCALL_MAGNITUDE"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1116
    const-string v1, "VIB_NOTIFICATION_MAGNITUDE"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1119
    const-string v1, "power_saving_mode"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1122
    const-string v1, "una_setting"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1125
    const-string v1, "notifications_use_ring_volume"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1126
    invoke-direct {p0, v0}, Lcom/android/providers/settings/DatabaseHelper;->loadDefaultHapticSettings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 1137
    const-string v1, "notification_light_pulse"

    const v2, 0x7f04000d

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1139
    const-string v1, "set_install_location"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1140
    const-string v1, "default_install_location"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1143
    invoke-direct {p0, v0}, Lcom/android/providers/settings/DatabaseHelper;->loadUISoundEffectsSettings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 1145
    const-string v1, "vibrate_in_silent"

    const v2, 0x7f040013

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1149
    const-string v1, "notifications_use_ring_volume"

    const v2, 0x7f040012

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1152
    const-string v1, "driving_mode_on"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1154
    const-string v1, "date_format"

    const v2, 0x7f06000b

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1157
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1159
    :cond_0
    return-void

    :cond_1
    move v2, v4

    .line 1057
    goto/16 :goto_0

    .line 1157
    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_2
    throw v0

    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_1
.end method

.method private loadUISoundEffectsSettings(Landroid/database/sqlite/SQLiteStatement;)V
    .locals 2
    .parameter

    .prologue
    .line 1162
    const-string v0, "power_sounds_enabled"

    const v1, 0x7f050003

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1164
    const-string v0, "low_battery_sound"

    const v1, 0x7f060004

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1167
    const-string v0, "dock_sounds_enabled"

    const v1, 0x7f050004

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1169
    const-string v0, "desk_dock_sound"

    const v1, 0x7f060005

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1171
    const-string v0, "desk_undock_sound"

    const v1, 0x7f060006

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1173
    const-string v0, "car_dock_sound"

    const v1, 0x7f060007

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1175
    const-string v0, "car_undock_sound"

    const v1, 0x7f060008

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1178
    const-string v0, "lockscreen_sounds_enabled"

    const v1, 0x7f050005

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1180
    const-string v0, "lock_sound"

    const v1, 0x7f060009

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1182
    const-string v0, "unlock_sound"

    const v1, 0x7f06000a

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1184
    return-void
.end method

.method private loadVibrateSetting(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 4
    .parameter "db"
    .parameter "deleteOld"

    .prologue
    .line 1023
    if-eqz p2, :cond_0

    .line 1024
    const-string v2, "DELETE FROM system WHERE name=\'vibrate_on\'"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1027
    :cond_0
    const/4 v0, 0x0

    .line 1029
    .local v0, stmt:Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    const-string v2, "INSERT OR IGNORE INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 1033
    const/4 v1, 0x0

    .line 1034
    .local v1, vibrate:I
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/media/AudioService;->getValueForVibrateSetting(III)I

    move-result v1

    .line 1036
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/media/AudioService;->getValueForVibrateSetting(III)I

    move-result v2

    or-int/2addr v1, v2

    .line 1038
    const-string v2, "vibrate_on"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1040
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1042
    :cond_1
    return-void

    .line 1040
    .end local v1           #vibrate:I
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_2
    throw v2
.end method

.method private loadVolumeLevels(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    .line 976
    const/4 v0, 0x0

    .line 978
    .local v0, stmt:Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    const-string v1, "INSERT OR IGNORE INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 981
    const-string v1, "volume_music"

    sget-object v2, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 983
    const-string v1, "volume_ring"

    sget-object v2, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 985
    const-string v1, "volume_system"

    sget-object v2, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 987
    const-string v1, "volume_voice"

    sget-object v2, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 991
    const-string v1, "volume_alarm"

    sget-object v2, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/4 v3, 0x4

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 993
    const-string v1, "volume_notification"

    sget-object v2, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/4 v3, 0x5

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 997
    const-string v1, "volume_bluetooth_sco"

    sget-object v2, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/4 v3, 0x6

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1002
    const-string v1, "mode_ringer"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1005
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadVibrateSetting(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1008
    const-string v1, "mode_ringer_streams_affected"

    const/16 v2, 0xa6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1012
    const-string v1, "mute_streams_affected"

    const/16 v2, 0x2e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1018
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1020
    :cond_0
    return-void

    .line 1018
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_1
    throw v1
.end method

.method private moveFromSystemToSecure(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)V
    .locals 7
    .parameter "db"
    .parameter "settingsToMove"

    .prologue
    .line 805
    const/4 v3, 0x0

    .line 806
    .local v3, insertStmt:Landroid/database/sqlite/SQLiteStatement;
    const/4 v1, 0x0

    .line 808
    .local v1, deleteStmt:Landroid/database/sqlite/SQLiteStatement;
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 810
    :try_start_0
    const-string v6, "INSERT INTO secure (name,value) SELECT name,value FROM system WHERE name=?"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    .line 813
    const-string v6, "DELETE FROM system WHERE name=?"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 816
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v0, v2

    .line 817
    .local v5, setting:Ljava/lang/String;
    const/4 v6, 0x1

    invoke-virtual {v3, v6, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 818
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 820
    const/4 v6, 0x1

    invoke-virtual {v1, v6, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 821
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 816
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 823
    .end local v5           #setting:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 825
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 826
    if-eqz v3, :cond_1

    .line 827
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 829
    :cond_1
    if-eqz v1, :cond_2

    .line 830
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 833
    :cond_2
    return-void

    .line 825
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v4           #len$:I
    :catchall_0
    move-exception v6

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 826
    if-eqz v3, :cond_3

    .line 827
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 829
    :cond_3
    if-eqz v1, :cond_4

    .line 830
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_4
    throw v6
.end method

.method private selectUsb([B)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1378
    new-instance v0, Ljava/io/FileOutputStream;

    const-string v1, "/sys/devices/platform/android_usb/UsbMenuSel"

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1381
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1387
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 1390
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 1383
    :catch_0
    move-exception v1

    .line 1384
    const/4 v1, 0x0

    .line 1387
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    throw v1
.end method

.method private upgradeLockPatternLocation(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 13
    .parameter "db"

    .prologue
    const/4 v12, 0x1

    const/4 v4, 0x0

    const-string v1, "system"

    const-string v3, "name=\'lock_pattern\'"

    .line 836
    const-string v0, "system"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v0

    const-string v0, "value"

    aput-object v0, v2, v12

    const-string v0, "name=\'lock_pattern\'"

    move-object v0, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 838
    .local v8, c:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 839
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 840
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 841
    .local v10, lockPattern:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 844
    :try_start_0
    new-instance v11, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-direct {v11, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 845
    .local v11, lpu:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v10}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 847
    .local v9, cellPattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-virtual {v11, v9}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 852
    .end local v9           #cellPattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    .end local v11           #lpu:Lcom/android/internal/widget/LockPatternUtils;
    :cond_0
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 853
    const-string v0, "system"

    const-string v0, "name=\'lock_pattern\'"

    invoke-virtual {p1, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 857
    .end local v10           #lockPattern:Ljava/lang/String;
    :goto_1
    return-void

    .line 855
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 848
    .restart local v10       #lockPattern:Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private upgradeScreenTimeoutFromNever(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 11
    .parameter "db"

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    const-string v10, "screen_off_timeout"

    .line 861
    const-string v1, "system"

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v6

    const-string v0, "value"

    aput-object v0, v2, v7

    const-string v3, "name=? AND value=?"

    new-array v4, v4, [Ljava/lang/String;

    const-string v0, "screen_off_timeout"

    aput-object v10, v4, v6

    const-string v0, "-1"

    aput-object v0, v4, v7

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 865
    .local v8, c:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 866
    .local v9, stmt:Landroid/database/sqlite/SQLiteStatement;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 867
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 869
    :try_start_0
    const-string v0, "INSERT OR REPLACE INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v9

    .line 873
    const-string v0, "screen_off_timeout"

    const v1, 0x1b7740

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v9, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 876
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 881
    :cond_0
    :goto_0
    return-void

    .line 876
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_1
    throw v0

    .line 879
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private writeKies(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 12
    .parameter

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v4, 0x0

    const-string v11, "SettingsProvider"

    .line 1315
    const-string v0, "SettingsProvider"

    const-string v0, "writing kies..."

    invoke-static {v11, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    const-string v1, "secure"

    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v9

    const-string v0, "value"

    aput-object v0, v2, v8

    const-string v3, "name=\'adb_enabled\'"

    move-object v0, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1320
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1321
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v8, v1, :cond_0

    move v1, v8

    .line 1322
    :goto_0
    const-string v2, "SettingsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adb is on: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1327
    if-nez v1, :cond_3

    .line 1331
    :try_start_0
    const-string v1, "secure"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "value"

    aput-object v3, v2, v0

    const-string v3, "name=\'usb_setting_mode\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1333
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1334
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1335
    const-string v2, "SettingsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "curren usb mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1340
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    move v0, v9

    .line 1373
    :goto_3
    return v0

    :cond_0
    move v1, v9

    .line 1321
    goto :goto_0

    .line 1342
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->isKiesEnabled(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1343
    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mtp:[B

    invoke-direct {p0, v0}, Lcom/android/providers/settings/DatabaseHelper;->selectUsb([B)Z

    move-result v0

    goto :goto_3

    .line 1345
    :cond_1
    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->kies:[B

    invoke-direct {p0, v0}, Lcom/android/providers/settings/DatabaseHelper;->selectUsb([B)Z

    move-result v0

    goto :goto_3

    .line 1350
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->isKiesEnabled(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1351
    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->ums:[B

    invoke-direct {p0, v0}, Lcom/android/providers/settings/DatabaseHelper;->selectUsb([B)Z

    move-result v0

    goto :goto_3

    .line 1353
    :cond_2
    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->kies:[B

    invoke-direct {p0, v0}, Lcom/android/providers/settings/DatabaseHelper;->selectUsb([B)Z

    move-result v0

    goto :goto_3

    .line 1358
    :pswitch_3
    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->askon:[B

    invoke-direct {p0, v0}, Lcom/android/providers/settings/DatabaseHelper;->selectUsb([B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_3

    .line 1366
    :catch_0
    move-exception v0

    move v0, v9

    .line 1368
    goto :goto_3

    :cond_3
    move v0, v8

    .line 1370
    goto :goto_3

    :cond_4
    move v1, v10

    goto :goto_2

    :cond_5
    move v1, v9

    goto/16 :goto_1

    .line 1340
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 120
    const-string v0, "CREATE TABLE system (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT UNIQUE ON CONFLICT REPLACE,value TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 125
    const-string v0, "CREATE INDEX systemIndex1 ON system (name);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 127
    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->createSecureTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 129
    const-string v0, "CREATE TABLE bluetooth_devices (_id INTEGER PRIMARY KEY,name TEXT,addr TEXT,channel INTEGER,type INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 137
    const-string v0, "CREATE TABLE bookmarks (_id INTEGER PRIMARY KEY,title TEXT,folder TEXT,intent TEXT,shortcut INTEGER,ordering INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 146
    const-string v0, "CREATE INDEX bookmarksIndex1 ON bookmarks (folder);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 147
    const-string v0, "CREATE INDEX bookmarksIndex2 ON bookmarks (shortcut);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 150
    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->loadBookmarks(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 153
    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->loadVolumeLevels(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 156
    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->loadSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 157
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 11
    .parameter "db"
    .parameter "oldVersion"
    .parameter "currentVersion"

    .prologue
    .line 161
    const-string v8, "SettingsProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Upgrading settings database from version "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    move v4, p2

    .line 173
    .local v4, upgradeVersion:I
    const/16 v8, 0x14

    if-ne v4, v8, :cond_0

    .line 180
    const/4 v8, 0x1

    invoke-direct {p0, p1, v8}, Lcom/android/providers/settings/DatabaseHelper;->loadVibrateSetting(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 182
    const/16 v4, 0x15

    .line 185
    :cond_0
    const/16 v8, 0x16

    if-ge v4, v8, :cond_1

    .line 186
    const/16 v4, 0x16

    .line 188
    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->upgradeLockPatternLocation(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 191
    :cond_1
    const/16 v8, 0x17

    if-ge v4, v8, :cond_2

    .line 192
    const-string v8, "UPDATE favorites SET iconResource=0 WHERE iconType=0"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 193
    const/16 v4, 0x17

    .line 196
    :cond_2
    const/16 v8, 0x17

    if-ne v4, v8, :cond_3

    .line 197
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 199
    :try_start_0
    const-string v8, "ALTER TABLE favorites ADD spanX INTEGER"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 200
    const-string v8, "ALTER TABLE favorites ADD spanY INTEGER"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 202
    const-string v8, "UPDATE favorites SET spanX=1, spanY=1 WHERE itemType<=0"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 204
    const-string v8, "UPDATE favorites SET spanX=2, spanY=2 WHERE itemType=1000 or itemType=1002"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 207
    const-string v8, "UPDATE favorites SET spanX=4, spanY=1 WHERE itemType=1001"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 212
    const/16 v4, 0x18

    .line 215
    :cond_3
    const/16 v8, 0x18

    if-ne v4, v8, :cond_4

    .line 216
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 220
    :try_start_1
    const-string v8, "DELETE FROM system WHERE name=\'network_preference\'"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 221
    const-string v8, "INSERT INTO system (\'name\', \'value\') values (\'network_preference\', \'1\')"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 225
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 227
    const/16 v4, 0x19

    .line 230
    :cond_4
    const/16 v8, 0x19

    if-ne v4, v8, :cond_5

    .line 231
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 233
    :try_start_2
    const-string v8, "ALTER TABLE favorites ADD uri TEXT"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 234
    const-string v8, "ALTER TABLE favorites ADD displayMode INTEGER"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 237
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 239
    const/16 v4, 0x1a

    .line 242
    :cond_5
    const/16 v8, 0x1a

    if-ne v4, v8, :cond_6

    .line 244
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 246
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->createSecureTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 247
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 249
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 251
    const/16 v4, 0x1b

    .line 254
    :cond_6
    const/16 v8, 0x1b

    if-ne v4, v8, :cond_7

    .line 255
    const/16 v8, 0x1f

    new-array v1, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "adb_enabled"

    aput-object v9, v1, v8

    const/4 v8, 0x1

    const-string v9, "android_id"

    aput-object v9, v1, v8

    const/4 v8, 0x2

    const-string v9, "bluetooth_on"

    aput-object v9, v1, v8

    const/4 v8, 0x3

    const-string v9, "data_roaming"

    aput-object v9, v1, v8

    const/4 v8, 0x4

    const-string v9, "device_provisioned"

    aput-object v9, v1, v8

    const/4 v8, 0x5

    const-string v9, "http_proxy"

    aput-object v9, v1, v8

    const/4 v8, 0x6

    const-string v9, "install_non_market_apps"

    aput-object v9, v1, v8

    const/4 v8, 0x7

    const-string v9, "location_providers_allowed"

    aput-object v9, v1, v8

    const/16 v8, 0x8

    const-string v9, "logging_id"

    aput-object v9, v1, v8

    const/16 v8, 0x9

    const-string v9, "network_preference"

    aput-object v9, v1, v8

    const/16 v8, 0xa

    const-string v9, "parental_control_enabled"

    aput-object v9, v1, v8

    const/16 v8, 0xb

    const-string v9, "parental_control_last_update"

    aput-object v9, v1, v8

    const/16 v8, 0xc

    const-string v9, "parental_control_redirect_url"

    aput-object v9, v1, v8

    const/16 v8, 0xd

    const-string v9, "settings_classname"

    aput-object v9, v1, v8

    const/16 v8, 0xe

    const-string v9, "usb_mass_storage_enabled"

    aput-object v9, v1, v8

    const/16 v8, 0xf

    const-string v9, "use_google_mail"

    aput-object v9, v1, v8

    const/16 v8, 0x10

    const-string v9, "wifi_networks_available_notification_on"

    aput-object v9, v1, v8

    const/16 v8, 0x11

    const-string v9, "wifi_networks_available_repeat_delay"

    aput-object v9, v1, v8

    const/16 v8, 0x12

    const-string v9, "wifi_num_open_networks_kept"

    aput-object v9, v1, v8

    const/16 v8, 0x13

    const-string v9, "wifi_on"

    aput-object v9, v1, v8

    const/16 v8, 0x14

    const-string v9, "wifi_watchdog_acceptable_packet_loss_percentage"

    aput-object v9, v1, v8

    const/16 v8, 0x15

    const-string v9, "wifi_watchdog_ap_count"

    aput-object v9, v1, v8

    const/16 v8, 0x16

    const-string v9, "wifi_watchdog_background_check_delay_ms"

    aput-object v9, v1, v8

    const/16 v8, 0x17

    const-string v9, "wifi_watchdog_background_check_enabled"

    aput-object v9, v1, v8

    const/16 v8, 0x18

    const-string v9, "wifi_watchdog_background_check_timeout_ms"

    aput-object v9, v1, v8

    const/16 v8, 0x19

    const-string v9, "wifi_watchdog_initial_ignored_ping_count"

    aput-object v9, v1, v8

    const/16 v8, 0x1a

    const-string v9, "wifi_watchdog_max_ap_checks"

    aput-object v9, v1, v8

    const/16 v8, 0x1b

    const-string v9, "wifi_watchdog_on"

    aput-object v9, v1, v8

    const/16 v8, 0x1c

    const-string v9, "wifi_watchdog_ping_count"

    aput-object v9, v1, v8

    const/16 v8, 0x1d

    const-string v9, "wifi_watchdog_ping_delay_ms"

    aput-object v9, v1, v8

    const/16 v8, 0x1e

    const-string v9, "wifi_watchdog_ping_timeout_ms"

    aput-object v9, v1, v8

    .line 288
    .local v1, settingsToMove:[Ljava/lang/String;
    invoke-direct {p0, p1, v1}, Lcom/android/providers/settings/DatabaseHelper;->moveFromSystemToSecure(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)V

    .line 289
    const/16 v4, 0x1c

    .line 292
    .end local v1           #settingsToMove:[Ljava/lang/String;
    :cond_7
    const/16 v8, 0x1c

    if-eq v4, v8, :cond_8

    const/16 v8, 0x1d

    if-ne v4, v8, :cond_9

    .line 299
    :cond_8
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 301
    :try_start_4
    const-string v8, "DELETE FROM system WHERE name=\'mode_ringer_streams_affected\'"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 303
    const/16 v0, 0x26

    .line 306
    .local v0, newValue:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "INSERT INTO system (\'name\', \'value\') values (\'mode_ringer_streams_affected\', \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\')"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 311
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 314
    const/16 v4, 0x1e

    .line 317
    .end local v0           #newValue:I
    :cond_9
    const/16 v8, 0x1e

    if-ne v4, v8, :cond_a

    .line 323
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 325
    :try_start_5
    const-string v8, "UPDATE bookmarks SET folder = \'@quicklaunch\'"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 326
    const-string v8, "UPDATE bookmarks SET title = \'\'"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 329
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 331
    const/16 v4, 0x1f

    .line 334
    :cond_a
    const/16 v8, 0x1f

    if-ne v4, v8, :cond_c

    .line 339
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 340
    const/4 v2, 0x0

    .line 342
    .local v2, stmt:Landroid/database/sqlite/SQLiteStatement;
    :try_start_6
    const-string v8, "DELETE FROM system WHERE name=\'window_animation_scale\'"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 344
    const-string v8, "DELETE FROM system WHERE name=\'transition_animation_scale\'"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 346
    const-string v8, "INSERT INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 348
    invoke-direct {p0, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadDefaultAnimationSettings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 349
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 351
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 352
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 354
    :cond_b
    const/16 v4, 0x20

    .line 357
    .end local v2           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :cond_c
    const/16 v8, 0x20

    if-ne v4, v8, :cond_e

    .line 360
    const-string v8, "ro.com.android.wifi-watchlist"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 361
    .local v6, wifiWatchList:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_d

    .line 362
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 364
    :try_start_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "INSERT OR IGNORE INTO secure(name,value) values(\'wifi_watchdog_watch_list\',\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\');"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 369
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 372
    :cond_d
    const/16 v4, 0x21

    .line 375
    .end local v6           #wifiWatchList:Ljava/lang/String;
    :cond_e
    const/16 v8, 0x21

    if-ne v4, v8, :cond_f

    .line 377
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 379
    :try_start_8
    const-string v8, "INSERT INTO system(name,value) values(\'zoom\',\'2\');"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 380
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 382
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 384
    const/16 v4, 0x22

    .line 387
    :cond_f
    const/16 v8, 0x22

    if-ne v4, v8, :cond_11

    .line 388
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 389
    const/4 v2, 0x0

    .line 391
    .restart local v2       #stmt:Landroid/database/sqlite/SQLiteStatement;
    :try_start_9
    const-string v8, "INSERT OR IGNORE INTO secure(name,value) VALUES(?,?);"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 393
    invoke-direct {p0, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSecure35Settings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 394
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    .line 396
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 397
    if-eqz v2, :cond_10

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 399
    :cond_10
    const/16 v4, 0x23

    .line 405
    .end local v2           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :cond_11
    const/16 v8, 0x23

    if-ne v4, v8, :cond_12

    .line 406
    const/16 v4, 0x24

    .line 409
    :cond_12
    const/16 v8, 0x24

    if-ne v4, v8, :cond_13

    .line 412
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 414
    :try_start_a
    const-string v8, "DELETE FROM system WHERE name=\'mode_ringer_streams_affected\'"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 416
    const/16 v0, 0xa6

    .line 420
    .restart local v0       #newValue:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "INSERT INTO system (\'name\', \'value\') values (\'mode_ringer_streams_affected\', \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\')"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 423
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    .line 425
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 427
    const/16 v4, 0x25

    .line 430
    .end local v0           #newValue:I
    :cond_13
    const/16 v8, 0x25

    if-ne v4, v8, :cond_15

    .line 431
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 432
    const/4 v2, 0x0

    .line 434
    .restart local v2       #stmt:Landroid/database/sqlite/SQLiteStatement;
    :try_start_b
    const-string v8, "INSERT OR IGNORE INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 436
    const-string v8, "airplane_mode_toggleable_radios"

    const v9, 0x7f060001

    invoke-direct {p0, v2, v8, v9}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 438
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    .line 440
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 441
    if-eqz v2, :cond_14

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 443
    :cond_14
    const/16 v4, 0x26

    .line 446
    .end local v2           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :cond_15
    const/16 v8, 0x26

    if-ne v4, v8, :cond_16

    .line 447
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 449
    :try_start_c
    iget-object v8, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f040008

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_38

    const-string v8, "1"

    move-object v5, v8

    .line 451
    .local v5, value:Ljava/lang/String;
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "INSERT OR IGNORE INTO secure(name,value) values(\'assisted_gps_enabled\',\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\');"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 453
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    .line 455
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 458
    const/16 v4, 0x27

    .line 461
    .end local v5           #value:Ljava/lang/String;
    :cond_16
    const/16 v8, 0x27

    if-ne v4, v8, :cond_17

    .line 462
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 464
    :try_start_d
    iget-object v8, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f040004

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_39

    const-string v8, "1"

    move-object v5, v8

    .line 467
    .restart local v5       #value:Ljava/lang/String;
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "INSERT OR IGNORE INTO system(name,value) values(\'screen_brightness_mode\',\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\');"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 469
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    .line 471
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 474
    const/16 v4, 0x28

    .line 477
    .end local v5           #value:Ljava/lang/String;
    :cond_17
    const/16 v8, 0x28

    if-ne v4, v8, :cond_19

    .line 481
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 482
    const/4 v2, 0x0

    .line 484
    .restart local v2       #stmt:Landroid/database/sqlite/SQLiteStatement;
    :try_start_e
    const-string v8, "DELETE FROM system WHERE name=\'window_animation_scale\'"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 486
    const-string v8, "DELETE FROM system WHERE name=\'transition_animation_scale\'"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 488
    const-string v8, "INSERT INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 490
    invoke-direct {p0, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadDefaultAnimationSettings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 491
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    .line 493
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 494
    if-eqz v2, :cond_18

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 496
    :cond_18
    const/16 v4, 0x29

    .line 499
    .end local v2           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :cond_19
    const/16 v8, 0x29

    if-ne v4, v8, :cond_1b

    .line 503
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 504
    const/4 v2, 0x0

    .line 506
    .restart local v2       #stmt:Landroid/database/sqlite/SQLiteStatement;
    :try_start_f
    const-string v8, "DELETE FROM system WHERE name=\'haptic_feedback_enabled\'"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 508
    const-string v8, "INSERT INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 510
    invoke-direct {p0, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadDefaultHapticSettings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 511
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    .line 513
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 514
    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 516
    :cond_1a
    const/16 v4, 0x2a

    .line 519
    .end local v2           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :cond_1b
    const/16 v8, 0x2a

    if-ne v4, v8, :cond_1d

    .line 523
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 524
    const/4 v2, 0x0

    .line 526
    .restart local v2       #stmt:Landroid/database/sqlite/SQLiteStatement;
    :try_start_10
    const-string v8, "INSERT INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 528
    const-string v8, "notification_light_pulse"

    const v9, 0x7f04000d

    invoke-direct {p0, v2, v8, v9}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 530
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_10

    .line 532
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 533
    if-eqz v2, :cond_1c

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 535
    :cond_1c
    const/16 v4, 0x2b

    .line 538
    .end local v2           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :cond_1d
    const/16 v8, 0x2b

    if-ne v4, v8, :cond_1f

    .line 542
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 543
    const/4 v2, 0x0

    .line 545
    .restart local v2       #stmt:Landroid/database/sqlite/SQLiteStatement;
    :try_start_11
    const-string v8, "INSERT OR IGNORE INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 547
    const-string v8, "volume_bluetooth_sco"

    sget-object v9, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/4 v10, 0x6

    aget v9, v9, v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {p0, v2, v8, v9}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 549
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_11

    .line 551
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 552
    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 554
    :cond_1e
    const/16 v4, 0x2c

    .line 557
    .end local v2           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :cond_1f
    const/16 v8, 0x2c

    if-ne v4, v8, :cond_20

    .line 561
    const-string v8, "DROP TABLE IF EXISTS gservices"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 562
    const-string v8, "DROP INDEX IF EXISTS gservicesIndex1"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 563
    const/16 v4, 0x2d

    .line 566
    :cond_20
    const/16 v8, 0x2d

    if-ne v4, v8, :cond_21

    .line 570
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 572
    :try_start_12
    const-string v8, "INSERT INTO secure(name,value) values(\'mount_play_not_snd\',\'1\');"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 574
    const-string v8, "INSERT INTO secure(name,value) values(\'mount_ums_autostart\',\'0\');"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 576
    const-string v8, "INSERT INTO secure(name,value) values(\'mount_ums_prompt\',\'1\');"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 578
    const-string v8, "INSERT INTO secure(name,value) values(\'mount_ums_notify_enabled\',\'1\');"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 580
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_12

    .line 582
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 584
    const/16 v4, 0x2e

    .line 587
    :cond_21
    const/16 v8, 0x2e

    if-ne v4, v8, :cond_22

    .line 592
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 594
    :try_start_13
    const-string v8, "DELETE FROM system WHERE name=\'lockscreen.password_type\';"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 595
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_13

    .line 597
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 599
    const/16 v4, 0x2f

    .line 603
    :cond_22
    const/16 v8, 0x2f

    if-ne v4, v8, :cond_23

    .line 608
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 610
    :try_start_14
    const-string v8, "DELETE FROM system WHERE name=\'lockscreen.password_type\';"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 611
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_14

    .line 613
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 615
    const/16 v4, 0x30

    .line 618
    :cond_23
    const/16 v8, 0x30

    if-ne v4, v8, :cond_24

    .line 623
    const/16 v4, 0x31

    .line 626
    :cond_24
    const/16 v8, 0x31

    if-ne v4, v8, :cond_26

    .line 630
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 631
    const/4 v2, 0x0

    .line 633
    .restart local v2       #stmt:Landroid/database/sqlite/SQLiteStatement;
    :try_start_15
    const-string v8, "INSERT INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 635
    invoke-direct {p0, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadUISoundEffectsSettings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 636
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_15

    .line 638
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 639
    if-eqz v2, :cond_25

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 642
    :cond_25
    const/16 v4, 0x32

    .line 645
    .end local v2           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :cond_26
    const/16 v8, 0x32

    if-ne v4, v8, :cond_27

    .line 649
    const/16 v4, 0x33

    .line 652
    :cond_27
    const/16 v8, 0x33

    if-ne v4, v8, :cond_28

    .line 654
    const/16 v8, 0x9

    new-array v1, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "lock_pattern_autolock"

    aput-object v9, v1, v8

    const/4 v8, 0x1

    const-string v9, "lock_pattern_visible_pattern"

    aput-object v9, v1, v8

    const/4 v8, 0x2

    const-string v9, "lock_pattern_tactile_feedback_enabled"

    aput-object v9, v1, v8

    const/4 v8, 0x3

    const-string v9, "lockscreen.password_type"

    aput-object v9, v1, v8

    const/4 v8, 0x4

    const-string v9, "lockscreen.lockoutattemptdeadline"

    aput-object v9, v1, v8

    const/4 v8, 0x5

    const-string v9, "lockscreen.patterneverchosen"

    aput-object v9, v1, v8

    const/4 v8, 0x6

    const-string v9, "lock_pattern_autolock"

    aput-object v9, v1, v8

    const/4 v8, 0x7

    const-string v9, "lockscreen.lockedoutpermanently"

    aput-object v9, v1, v8

    const/16 v8, 0x8

    const-string v9, "lockscreen.password_salt"

    aput-object v9, v1, v8

    .line 665
    .restart local v1       #settingsToMove:[Ljava/lang/String;
    invoke-direct {p0, p1, v1}, Lcom/android/providers/settings/DatabaseHelper;->moveFromSystemToSecure(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)V

    .line 666
    const/16 v4, 0x34

    .line 669
    .end local v1           #settingsToMove:[Ljava/lang/String;
    :cond_28
    const/16 v8, 0x34

    if-ne v4, v8, :cond_2a

    .line 671
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 672
    const/4 v2, 0x0

    .line 674
    .restart local v2       #stmt:Landroid/database/sqlite/SQLiteStatement;
    :try_start_16
    const-string v8, "INSERT INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 676
    const-string v8, "vibrate_in_silent"

    const v9, 0x7f040013

    invoke-direct {p0, v2, v8, v9}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 678
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_16

    .line 680
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 681
    if-eqz v2, :cond_29

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 684
    :cond_29
    const/16 v4, 0x35

    .line 687
    .end local v2           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :cond_2a
    const/16 v8, 0x35

    if-ne v4, v8, :cond_2b

    .line 691
    const/16 v4, 0x36

    .line 694
    :cond_2b
    const/16 v8, 0x36

    if-ne v4, v8, :cond_2c

    .line 698
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 700
    :try_start_17
    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->upgradeScreenTimeoutFromNever(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 701
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_17

    .line 703
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 706
    const/16 v4, 0x37

    .line 709
    :cond_2c
    const/16 v8, 0x37

    if-ne v4, v8, :cond_2f

    .line 711
    const/4 v8, 0x2

    new-array v1, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "set_install_location"

    aput-object v9, v1, v8

    const/4 v8, 0x1

    const-string v9, "default_install_location"

    aput-object v9, v1, v8

    .line 715
    .restart local v1       #settingsToMove:[Ljava/lang/String;
    invoke-direct {p0, p1, v1}, Lcom/android/providers/settings/DatabaseHelper;->moveFromSystemToSecure(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)V

    .line 716
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 718
    const/4 v2, 0x0

    .line 719
    .restart local v2       #stmt:Landroid/database/sqlite/SQLiteStatement;
    const/4 v3, 0x0

    .line 721
    .local v3, stmt2:Landroid/database/sqlite/SQLiteStatement;
    :try_start_18
    const-string v8, "INSERT INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 723
    const-string v8, "INSERT OR REPLACE INTO secure(name,value) VALUES(?,?);"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    .line 725
    const-string v8, "set_install_location"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {p0, v2, v8, v9}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 726
    const-string v8, "default_install_location"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {p0, v2, v8, v9}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 729
    const-string v8, "SettingsProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Set USB mode as default"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    const-string v8, "usb_setting_mode"

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {p0, v3, v8, v9}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 732
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_18

    .line 734
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 735
    if-eqz v2, :cond_2d

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 736
    :cond_2d
    if-eqz v3, :cond_2e

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 738
    :cond_2e
    const/16 v4, 0x38

    .line 741
    .end local v1           #settingsToMove:[Ljava/lang/String;
    .end local v2           #stmt:Landroid/database/sqlite/SQLiteStatement;
    .end local v3           #stmt2:Landroid/database/sqlite/SQLiteStatement;
    :cond_2f
    const/16 v8, 0x38

    if-lt v4, v8, :cond_31

    .line 742
    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->writeKies(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v8

    if-nez v8, :cond_31

    .line 743
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 744
    const/4 v2, 0x0

    .line 746
    .restart local v2       #stmt:Landroid/database/sqlite/SQLiteStatement;
    :try_start_19
    const-string v8, "INSERT OR REPLACE INTO secure(name,value) VALUES(?,?);"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 748
    const-string v8, "SettingsProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Set USB mode as default"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    const-string v8, "usb_setting_mode"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {p0, v2, v8, v9}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 750
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_19

    .line 752
    if-eqz v2, :cond_30

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 753
    :cond_30
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 758
    .end local v2           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :cond_31
    const/16 v8, 0x38

    if-ne v4, v8, :cond_33

    .line 762
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 763
    const/4 v2, 0x0

    .line 765
    .restart local v2       #stmt:Landroid/database/sqlite/SQLiteStatement;
    :try_start_1a
    const-string v8, "DELETE FROM system WHERE name=\'airplane_mode_toggleable_radios\'"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 767
    const-string v8, "INSERT OR IGNORE INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 769
    const-string v8, "airplane_mode_toggleable_radios"

    const v9, 0x7f060001

    invoke-direct {p0, v2, v8, v9}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 771
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1a

    .line 773
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 774
    if-eqz v2, :cond_32

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 776
    :cond_32
    const/16 v4, 0x39

    .line 780
    .end local v2           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :cond_33
    if-eq v4, p3, :cond_34

    .line 781
    const-string v8, "SettingsProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Got stuck trying to upgrade from version "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", must wipe the settings provider"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    const-string v8, "DROP TABLE IF EXISTS system"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 784
    const-string v8, "DROP INDEX IF EXISTS systemIndex1"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 785
    const-string v8, "DROP TABLE IF EXISTS secure"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 786
    const-string v8, "DROP INDEX IF EXISTS secureIndex1"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 787
    const-string v8, "DROP TABLE IF EXISTS gservices"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 788
    const-string v8, "DROP INDEX IF EXISTS gservicesIndex1"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 789
    const-string v8, "DROP TABLE IF EXISTS bluetooth_devices"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 790
    const-string v8, "DROP TABLE IF EXISTS bookmarks"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 791
    const-string v8, "DROP INDEX IF EXISTS bookmarksIndex1"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 792
    const-string v8, "DROP INDEX IF EXISTS bookmarksIndex2"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 793
    const-string v8, "DROP TABLE IF EXISTS favorites"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 794
    invoke-virtual {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 797
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 798
    .local v7, wipeReason:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "INSERT INTO secure(name,value) values(\'wiped_db_reason\',\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\');"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 801
    .end local v7           #wipeReason:Ljava/lang/String;
    :cond_34
    return-void

    .line 210
    :catchall_0
    move-exception v8

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v8

    .line 225
    :catchall_1
    move-exception v8

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v8

    .line 237
    :catchall_2
    move-exception v8

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v8

    .line 249
    :catchall_3
    move-exception v8

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v8

    .line 311
    :catchall_4
    move-exception v8

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v8

    .line 329
    :catchall_5
    move-exception v8

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v8

    .line 351
    .restart local v2       #stmt:Landroid/database/sqlite/SQLiteStatement;
    :catchall_6
    move-exception v8

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 352
    if-eqz v2, :cond_35

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_35
    throw v8

    .line 369
    .end local v2           #stmt:Landroid/database/sqlite/SQLiteStatement;
    .restart local v6       #wifiWatchList:Ljava/lang/String;
    :catchall_7
    move-exception v8

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v8

    .line 382
    .end local v6           #wifiWatchList:Ljava/lang/String;
    :catchall_8
    move-exception v8

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v8

    .line 396
    .restart local v2       #stmt:Landroid/database/sqlite/SQLiteStatement;
    :catchall_9
    move-exception v8

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 397
    if-eqz v2, :cond_36

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_36
    throw v8

    .line 425
    .end local v2           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :catchall_a
    move-exception v8

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v8

    .line 440
    .restart local v2       #stmt:Landroid/database/sqlite/SQLiteStatement;
    :catchall_b
    move-exception v8

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 441
    if-eqz v2, :cond_37

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_37
    throw v8

    .line 449
    .end local v2           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :cond_38
    :try_start_1b
    const-string v8, "0"
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_c

    move-object v5, v8

    goto/16 :goto_0

    .line 455
    :catchall_c
    move-exception v8

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v8

    .line 464
    :cond_39
    :try_start_1c
    const-string v8, "0"
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_d

    move-object v5, v8

    goto/16 :goto_1

    .line 471
    :catchall_d
    move-exception v8

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v8

    .line 493
    .restart local v2       #stmt:Landroid/database/sqlite/SQLiteStatement;
    :catchall_e
    move-exception v8

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 494
    if-eqz v2, :cond_3a

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_3a
    throw v8

    .line 513
    :catchall_f
    move-exception v8

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 514
    if-eqz v2, :cond_3b

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_3b
    throw v8

    .line 532
    :catchall_10
    move-exception v8

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 533
    if-eqz v2, :cond_3c

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_3c
    throw v8

    .line 551
    :catchall_11
    move-exception v8

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 552
    if-eqz v2, :cond_3d

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_3d
    throw v8

    .line 582
    .end local v2           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :catchall_12
    move-exception v8

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v8

    .line 597
    :catchall_13
    move-exception v8

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v8

    .line 613
    :catchall_14
    move-exception v8

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v8

    .line 638
    .restart local v2       #stmt:Landroid/database/sqlite/SQLiteStatement;
    :catchall_15
    move-exception v8

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 639
    if-eqz v2, :cond_3e

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_3e
    throw v8

    .line 680
    :catchall_16
    move-exception v8

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 681
    if-eqz v2, :cond_3f

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_3f
    throw v8

    .line 703
    .end local v2           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :catchall_17
    move-exception v8

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v8

    .line 734
    .restart local v1       #settingsToMove:[Ljava/lang/String;
    .restart local v2       #stmt:Landroid/database/sqlite/SQLiteStatement;
    .restart local v3       #stmt2:Landroid/database/sqlite/SQLiteStatement;
    :catchall_18
    move-exception v8

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 735
    if-eqz v2, :cond_40

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 736
    :cond_40
    if-eqz v3, :cond_41

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_41
    throw v8

    .line 752
    .end local v1           #settingsToMove:[Ljava/lang/String;
    .end local v3           #stmt2:Landroid/database/sqlite/SQLiteStatement;
    :catchall_19
    move-exception v8

    if-eqz v2, :cond_42

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 753
    :cond_42
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v8

    .line 773
    :catchall_1a
    move-exception v8

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 774
    if-eqz v2, :cond_43

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_43
    throw v8
.end method
