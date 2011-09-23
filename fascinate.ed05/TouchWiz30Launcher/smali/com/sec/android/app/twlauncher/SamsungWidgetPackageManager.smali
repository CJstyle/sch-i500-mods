.class public Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;
.super Ljava/lang/Object;
.source "SamsungWidgetPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;
    }
.end annotation


# static fields
.field static final DEBUG:Z = true

.field private static final DEFAULT_WIDGET_NUMBER:I = 0xa

.field static final INTENT_ACTION:Ljava/lang/String; = "com.samsung.sec.android.SAMSUNG_APP_WIDGET_ACTION"

.field static final INTENT_CATEGORY:Ljava/lang/String; = "com.samsung.sec.android.SAMSUNG_APP_WIDGET"

.field static final LOG_TAG:Ljava/lang/String; = "Launcher.SWidgetPkgMgr"

.field static final WIDGET_CLASS:Ljava/lang/String; = "plug_in_class"

.field static final WIDGET_HEIGHT:Ljava/lang/String; = "min_height"

.field static final WIDGET_NAME:Ljava/lang/String; = "plug_in_name"

.field private static final WIDGET_NOT_RESPONDING_TIMEOUT:J = 0x1388L

.field static final WIDGET_WIDTH:Ljava/lang/String; = "min_width"

.field static final YahooWidgetName:Ljava/lang/String; = "com.sec.android.widgetapp.stockclock"

.field private static sWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;


# instance fields
.field private mIsWidgetLoaded:Z

.field private final mItemCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSamsungAppWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgetLoader:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;

.field private mWidgetLoaderThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mItemCache:Ljava/util/HashMap;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mSamsungAppWidgets:Ljava/util/ArrayList;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->loadWidgets(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mSamsungAppWidgets:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->makeWidgetItem(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->loadYahooWidgetForCsc()Z

    move-result v0

    return v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mIsWidgetLoaded:Z

    return p1
.end method

.method private findWidgetForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .parameter "context"
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 248
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 249
    .local v5, mainIntent:Landroid/content/Intent;
    const-string v7, "com.samsung.sec.android.SAMSUNG_APP_WIDGET_ACTION"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    const-string v7, "com.samsung.sec.android.SAMSUNG_APP_WIDGET"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v5, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 253
    .local v1, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 255
    .local v6, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_1

    .line 257
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 258
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 259
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 260
    .local v4, info:Landroid/content/pm/ResolveInfo;
    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 261
    .local v0, activityInfo:Landroid/content/pm/ActivityInfo;
    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 262
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 267
    .end local v0           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v4           #info:Landroid/content/pm/ResolveInfo;
    :cond_1
    return-object v6
.end method

.method public static getInstance()Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->sWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;-><init>()V

    sput-object v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->sWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    .line 75
    :cond_0
    sget-object v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->sWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    return-object v0
.end method

.method private loadWidgets(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 237
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 238
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.samsung.sec.android.SAMSUNG_APP_WIDGET_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    const-string v2, "com.samsung.sec.android.SAMSUNG_APP_WIDGET"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 243
    .local v0, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    return-object v0
.end method

.method private loadYahooWidgetForCsc()Z
    .locals 23

    .prologue
    .line 384
    const-string v2, "/system/csc/others.xml"

    .line 385
    .local v2, OTHERS_CSC_FILE:Ljava/lang/String;
    const-string v3, "AppWidget"

    .line 386
    .local v3, TAG_APPWIDGET:Ljava/lang/String;
    const-string v4, "Yahoo"

    .line 387
    .local v4, TAG_YAHOO:Ljava/lang/String;
    const-string v6, "On"

    .line 388
    .local v6, YAHOO_ON:Ljava/lang/String;
    const-string v5, "Off"

    .line 391
    .local v5, YAHOO_OFF:Ljava/lang/String;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v13

    .line 393
    .local v13, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_0
    invoke-virtual {v13}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v7

    .line 394
    .local v7, builder:Ljavax/xml/parsers/DocumentBuilder;
    new-instance v20, Ljava/io/File;

    const-string v21, "/system/csc/others.xml"

    invoke-direct/range {v20 .. v21}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v7

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v17

    .line 395
    .local v17, mDoc:Lorg/w3c/dom/Document;
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v18

    .line 396
    .local v18, mRoot:Lorg/w3c/dom/Node;
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 397
    .local v10, children:Lorg/w3c/dom/NodeList;
    if-eqz v10, :cond_4

    .line 398
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v19

    .line 399
    .local v19, n:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    move v0, v14

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    .line 400
    invoke-interface {v10, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 401
    .local v8, child:Lorg/w3c/dom/Node;
    const-string v20, "AppWidget"

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 403
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v11

    .line 404
    .local v11, children2:Lorg/w3c/dom/NodeList;
    if-eqz v11, :cond_3

    .line 405
    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v16

    .line 406
    .local v16, m:I
    const/4 v15, 0x0

    .local v15, j:I
    :goto_1
    move v0, v15

    move/from16 v1, v16

    if-ge v0, v1, :cond_3

    .line 407
    invoke-interface {v11, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    .line 408
    .local v9, child2:Lorg/w3c/dom/Node;
    const-string v20, "Yahoo"

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 410
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v20

    const-string v21, "On"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    const/16 v20, 0x1

    .line 426
    .end local v7           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v8           #child:Lorg/w3c/dom/Node;
    .end local v9           #child2:Lorg/w3c/dom/Node;
    .end local v10           #children:Lorg/w3c/dom/NodeList;
    .end local v11           #children2:Lorg/w3c/dom/NodeList;
    .end local v14           #i:I
    .end local v15           #j:I
    .end local v16           #m:I
    .end local v17           #mDoc:Lorg/w3c/dom/Document;
    .end local v18           #mRoot:Lorg/w3c/dom/Node;
    .end local v19           #n:I
    :goto_2
    return v20

    .line 411
    .restart local v7       #builder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v8       #child:Lorg/w3c/dom/Node;
    .restart local v9       #child2:Lorg/w3c/dom/Node;
    .restart local v10       #children:Lorg/w3c/dom/NodeList;
    .restart local v11       #children2:Lorg/w3c/dom/NodeList;
    .restart local v14       #i:I
    .restart local v15       #j:I
    .restart local v16       #m:I
    .restart local v17       #mDoc:Lorg/w3c/dom/Document;
    .restart local v18       #mRoot:Lorg/w3c/dom/Node;
    .restart local v19       #n:I
    :cond_0
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v20

    const-string v21, "Off"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v20

    if-eqz v20, :cond_1

    const/16 v20, 0x0

    goto :goto_2

    .line 412
    :cond_1
    const/16 v20, 0x1

    goto :goto_2

    .line 406
    :cond_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 399
    .end local v9           #child2:Lorg/w3c/dom/Node;
    .end local v11           #children2:Lorg/w3c/dom/NodeList;
    .end local v15           #j:I
    .end local v16           #m:I
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 419
    .end local v7           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v8           #child:Lorg/w3c/dom/Node;
    .end local v10           #children:Lorg/w3c/dom/NodeList;
    .end local v14           #i:I
    .end local v17           #mDoc:Lorg/w3c/dom/Document;
    .end local v18           #mRoot:Lorg/w3c/dom/Node;
    .end local v19           #n:I
    :catch_0
    move-exception v20

    move-object/from16 v12, v20

    .line 420
    .local v12, ex:Ljavax/xml/parsers/ParserConfigurationException;
    const-string v20, "Launcher.SWidgetPkgMgr"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "ParserConfigurationException:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    .end local v12           #ex:Ljavax/xml/parsers/ParserConfigurationException;
    :cond_4
    :goto_3
    const/16 v20, 0x1

    goto :goto_2

    .line 421
    :catch_1
    move-exception v20

    move-object/from16 v12, v20

    .line 422
    .local v12, ex:Lorg/xml/sax/SAXException;
    const-string v20, "Launcher.SWidgetPkgMgr"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "SAXException: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 423
    .end local v12           #ex:Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v20

    move-object/from16 v12, v20

    .line 424
    .local v12, ex:Ljava/io/IOException;
    const-string v20, "Launcher.SWidgetPkgMgr"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "IOException: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private makeWidgetItem(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    .locals 4
    .parameter "context"
    .parameter "info"

    .prologue
    .line 271
    new-instance v0, Landroid/content/ComponentName;

    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    .local v0, componentName:Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mItemCache:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    .line 275
    .local v1, item:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    if-nez v1, :cond_1

    .line 276
    new-instance v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    .end local v1           #item:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;-><init>(Ljava/lang/String;)V

    .line 277
    .restart local v1       #item:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    invoke-direct {p0, p1, v1, p2}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->updateWidgetItem(Landroid/content/Context;Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;Landroid/content/pm/ResolveInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 278
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mItemCache:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    .line 284
    :goto_0
    return-object v2

    .line 281
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move-object v2, v1

    .line 284
    goto :goto_0
.end method

.method private declared-synchronized stopAndWaitForWidgetsLoader()V
    .locals 3

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mWidgetLoader:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mWidgetLoader:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    const-string v0, "Launcher.SWidgetPkgMgr"

    const-string v1, "  --> wait for widgets loader "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mWidgetLoader:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mWidgetLoaderThread:Ljava/lang/Thread;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 116
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 112
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updateWidgetItem(Landroid/content/Context;Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;Landroid/content/pm/ResolveInfo;)Z
    .locals 22
    .parameter "context"
    .parameter "item"
    .parameter "info"

    .prologue
    .line 288
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 290
    .local v9, manager:Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 292
    .local v3, c:Landroid/content/Context;
    :try_start_0
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x3

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 297
    :goto_0
    if-nez v3, :cond_0

    const/16 v18, 0x0

    .line 375
    :goto_1
    return v18

    .line 293
    :catch_0
    move-exception v18

    move-object/from16 v7, v18

    .line 294
    .local v7, e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 299
    .end local v7           #e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    .line 300
    .local v5, config:Landroid/content/res/Configuration;
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/Launcher;

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 301
    move-object/from16 v0, p1

    check-cast v0, Lcom/sec/android/app/twlauncher/Launcher;

    move-object v8, v0

    .line 302
    .local v8, launcher:Lcom/sec/android/app/twlauncher/Launcher;
    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/Launcher;->getResOrientation()I

    move-result v11

    .line 304
    .local v11, orientation:I
    move-object v0, v5

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v18, v0

    move/from16 v0, v18

    move v1, v11

    if-eq v0, v1, :cond_1

    .line 305
    iput v11, v5, Landroid/content/res/Configuration;->orientation:I

    .line 306
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    move-object/from16 v0, v18

    move-object v1, v5

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 310
    .end local v8           #launcher:Lcom/sec/android/app/twlauncher/Launcher;
    .end local v11           #orientation:I
    :cond_1
    const/4 v12, 0x0

    .line 311
    .local v12, resClassName:I
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const-string v19, "plug_in_class"

    const-string v20, "array"

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v18 .. v21}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 314
    if-eqz v12, :cond_3

    .line 315
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 320
    .local v4, classNames:[Ljava/lang/String;
    if-eqz v4, :cond_2

    move-object v0, v4

    array-length v0, v0

    move/from16 v18, v0

    if-lez v18, :cond_2

    const/16 v18, 0x0

    aget-object v18, v4, v18

    if-eqz v18, :cond_2

    const/16 v18, 0x0

    aget-object v18, v4, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_2

    const/16 v18, 0x0

    aget-object v18, v4, v18

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_4

    .line 323
    :cond_2
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 317
    .end local v4           #classNames:[Ljava/lang/String;
    :cond_3
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 326
    .restart local v4       #classNames:[Ljava/lang/String;
    :cond_4
    const/4 v15, 0x0

    .line 327
    .local v15, resWidth:I
    const/4 v13, 0x0

    .line 328
    .local v13, resHeight:I
    const/4 v14, 0x0

    .line 330
    .local v14, resName:I
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const-string v19, "min_width"

    const-string v20, "string"

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v18 .. v21}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 331
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const-string v19, "min_height"

    const-string v20, "string"

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v18 .. v21}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 332
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const-string v19, "plug_in_name"

    const-string v20, "string"

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v18 .. v21}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 334
    if-eqz v14, :cond_5

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v16, v18

    .line 337
    .local v16, title:Ljava/lang/String;
    :goto_2
    const/16 v18, 0x0

    aget-object v18, v4, v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mClassName:Ljava/lang/String;

    .line 338
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mWidgetTitle:Ljava/lang/String;

    .line 340
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    .line 342
    .local v10, metrics:Landroid/util/DisplayMetrics;
    iget v6, v5, Landroid/content/res/Configuration;->orientation:I

    .line 343
    .local v6, curOrientation:I
    const/16 v17, 0x2

    .line 344
    .local v17, tmpOrientation:I
    const/16 v18, 0x2

    move v0, v6

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 345
    if-eqz v15, :cond_6

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object v0, v10

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    :goto_3
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mHorizontalWidth:I

    .line 346
    if-eqz v13, :cond_7

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object v0, v10

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    :goto_4
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mHorizontalHeight:I

    .line 347
    const/16 v17, 0x1

    .line 353
    :goto_5
    move/from16 v0, v17

    move-object v1, v5

    iput v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 354
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    move-object/from16 v0, v18

    move-object v1, v5

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 356
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const-string v19, "min_width"

    const-string v20, "string"

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v18 .. v21}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 357
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const-string v19, "min_height"

    const-string v20, "string"

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v18 .. v21}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 359
    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    .line 360
    if-eqz v15, :cond_b

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object v0, v10

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    :goto_6
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mHorizontalWidth:I

    .line 361
    if-eqz v13, :cond_c

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object v0, v10

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    :goto_7
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mHorizontalHeight:I

    .line 367
    :goto_8
    iput v6, v5, Landroid/content/res/Configuration;->orientation:I

    .line 368
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    move-object/from16 v0, v18

    move-object v1, v5

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 371
    const-string v18, "Launcher.SWidgetPkgMgr"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "  -----> widget title="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mWidgetTitle:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " vertical width="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p2

    iget v0, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mVerticalWidth:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " height="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p2

    iget v0, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mVerticalHeight:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    const-string v18, "Launcher.SWidgetPkgMgr"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "  -----> widget title="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mWidgetTitle:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " horizontal width="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p2

    iget v0, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mHorizontalWidth:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " height="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p2

    iget v0, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mHorizontalHeight:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 334
    .end local v6           #curOrientation:I
    .end local v10           #metrics:Landroid/util/DisplayMetrics;
    .end local v16           #title:Ljava/lang/String;
    .end local v17           #tmpOrientation:I
    :cond_5
    move-object/from16 v0, p3

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v16, v18

    goto/16 :goto_2

    .line 345
    .restart local v6       #curOrientation:I
    .restart local v10       #metrics:Landroid/util/DisplayMetrics;
    .restart local v16       #title:Ljava/lang/String;
    .restart local v17       #tmpOrientation:I
    :cond_6
    const/16 v18, 0x0

    goto/16 :goto_3

    .line 346
    :cond_7
    const/16 v18, 0x0

    goto/16 :goto_4

    .line 349
    :cond_8
    if-eqz v15, :cond_9

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object v0, v10

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    :goto_9
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mVerticalWidth:I

    .line 350
    if-eqz v13, :cond_a

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object v0, v10

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    :goto_a
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mVerticalHeight:I

    goto/16 :goto_5

    .line 349
    :cond_9
    const/16 v18, 0x0

    goto :goto_9

    .line 350
    :cond_a
    const/16 v18, 0x0

    goto :goto_a

    .line 360
    :cond_b
    const/16 v18, 0x0

    goto/16 :goto_6

    .line 361
    :cond_c
    const/16 v18, 0x0

    goto/16 :goto_7

    .line 363
    :cond_d
    if-eqz v15, :cond_e

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object v0, v10

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    :goto_b
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mVerticalWidth:I

    .line 364
    if-eqz v13, :cond_f

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object v0, v10

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    :goto_c
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mVerticalHeight:I

    goto/16 :goto_8

    .line 363
    :cond_e
    const/16 v18, 0x0

    goto :goto_b

    .line 364
    :cond_f
    const/16 v18, 0x0

    goto :goto_c
.end method


# virtual methods
.method declared-synchronized addPackage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 119
    monitor-enter p0

    :try_start_0
    const-string v4, "Launcher.SWidgetPkgMgr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addPackage="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 122
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->findWidgetForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 123
    .local v3, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 124
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mWidgetLoader:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mWidgetLoader:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 125
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->scanPackage(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    .end local v3           #matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    monitor-exit p0

    return-void

    .line 129
    .restart local v3       #matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    :try_start_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 130
    .local v1, info:Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, p1, v1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->makeWidgetItem(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    move-result-object v2

    .line 131
    .local v2, item:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mSamsungAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 119
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #info:Landroid/content/pm/ResolveInfo;
    .end local v2           #item:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    .end local v3           #matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public createWidget(Landroid/content/Context;Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;)Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    .locals 1
    .parameter "context"
    .parameter "item"

    .prologue
    .line 200
    invoke-static {p1}, Lcom/sec/android/app/twlauncher/LauncherModel;->allocWidgetId(Landroid/content/Context;)I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->makeSamsungWidget(Landroid/content/Context;Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;I)Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    move-result-object v0

    return-object v0
.end method

.method public createWidget(Landroid/content/Context;Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    .locals 2
    .parameter "context"
    .parameter "item"
    .parameter "info"

    .prologue
    .line 204
    iget v0, p3, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/twlauncher/LauncherModel;->allocWidgetId(Landroid/content/Context;)I

    move-result v0

    :goto_0
    invoke-static {p1, p2, v0, p3}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->makeSamsungWidget(Landroid/content/Context;Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;ILcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    move-result-object v0

    return-object v0

    :cond_0
    iget v0, p3, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetId:I

    goto :goto_0
.end method

.method public destroyWidget(Landroid/app/ActivityGroup;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V
    .locals 5
    .parameter "group"
    .parameter "info"

    .prologue
    .line 208
    iget v2, p2, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetId:I

    int-to-long v0, v2

    .line 209
    .local v0, widgetId:J
    invoke-virtual {p1}, Landroid/app/ActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/app/LocalActivityManager;->destroyActivity(Ljava/lang/String;Z)Landroid/view/Window;

    .line 210
    return-void
.end method

.method public findWidget(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    .locals 4
    .parameter "packageName"
    .parameter "className"

    .prologue
    .line 225
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mSamsungAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 226
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 227
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mSamsungAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    .line 228
    .local v2, item:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    iget-object v3, v2, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mClassName:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    .line 233
    .end local v2           #item:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    :goto_1
    return-object v3

    .line 226
    .restart local v2       #item:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 233
    .end local v2           #item:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getWidgetItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mSamsungAppWidgets:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isWidgetLoaded()Z
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mIsWidgetLoaded:Z

    return v0
.end method

.method public pauseWidget(Landroid/app/ActivityGroup;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V
    .locals 0
    .parameter "group"
    .parameter "info"

    .prologue
    .line 213
    invoke-virtual {p2, p1}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->fireOnPause(Landroid/content/Context;)V

    .line 214
    return-void
.end method

.method declared-synchronized removePackage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 138
    monitor-enter p0

    :try_start_0
    const-string v6, "Launcher.SWidgetPkgMgr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "removePackage="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 141
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mSamsungAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 143
    .local v1, count:I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v5, toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 145
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mSamsungAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    .line 146
    .local v4, item:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    iget-object v6, v4, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 147
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 151
    .end local v4           #item:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_3

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mWidgetLoader:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mWidgetLoader:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 152
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mItemCache:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 153
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->scanPackage(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v5           #toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;>;"
    :cond_2
    monitor-exit p0

    return-void

    .line 157
    .restart local v1       #count:I
    .restart local v2       #i:I
    .restart local v5       #toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;>;"
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mItemCache:Ljava/util/HashMap;

    .line 158
    .local v0, cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    .line 159
    .restart local v4       #item:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mSamsungAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 160
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v4, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mPackageName:Ljava/lang/String;

    iget-object v8, v4, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mClassName:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string v6, "aaa"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "s remove="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 138
    .end local v0           #cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;>;"
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #item:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    .end local v5           #toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;>;"
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public resumeWidget(Landroid/app/ActivityGroup;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V
    .locals 0
    .parameter "group"
    .parameter "info"

    .prologue
    .line 217
    invoke-virtual {p2, p1}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->fireOnResume(Landroid/content/Context;)V

    .line 218
    return-void
.end method

.method declared-synchronized scanPackage(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 82
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mIsWidgetLoaded:Z

    .line 84
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->stopAndWaitForWidgetsLoader()V

    .line 86
    new-instance v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;-><init>(Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mWidgetLoader:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;

    .line 87
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mWidgetLoader:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;

    const-string v2, "SamsungWidgets Loader"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mWidgetLoaderThread:Ljava/lang/Thread;

    .line 88
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mWidgetLoaderThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    monitor-exit p0

    return-void

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized start(Landroid/content/Context;Z)V
    .locals 1
    .parameter "context"
    .parameter "localeChanged"

    .prologue
    .line 92
    monitor-enter p0

    if-nez p2, :cond_0

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mIsWidgetLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 99
    :goto_0
    monitor-exit p0

    return-void

    .line 94
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->stopAndWaitForWidgetsLoader()V

    .line 96
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mItemCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 98
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->scanPackage(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unbind()V
    .locals 0

    .prologue
    .line 379
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->stopAndWaitForWidgetsLoader()V

    .line 380
    return-void
.end method

.method declared-synchronized updatePackage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 167
    monitor-enter p0

    :try_start_0
    const-string v7, "Launcher.SWidgetPkgMgr"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updatePackage="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mWidgetLoader:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mWidgetLoader:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 169
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->scanPackage(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 173
    :cond_1
    if-eqz p2, :cond_0

    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 174
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mSamsungAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 175
    .local v0, count:I
    const/4 v5, 0x0

    .line 176
    .local v5, matchItem:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 177
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mSamsungAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    .line 178
    .local v4, item:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    iget-object v7, v4, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 179
    move-object v5, v4

    .line 184
    .end local v4           #item:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    :cond_2
    if-eqz v5, :cond_0

    .line 185
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->findWidgetForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 186
    .local v6, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 187
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 188
    .local v3, info:Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, p1, v5, v3}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->updateWidgetItem(Landroid/content/Context;Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;Landroid/content/pm/ResolveInfo;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_0

    .line 176
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #info:Landroid/content/pm/ResolveInfo;
    .end local v6           #matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v4       #item:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 167
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v4           #item:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    .end local v5           #matchItem:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method
