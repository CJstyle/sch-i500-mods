.class public Lcom/sec/android/app/twlauncher/LauncherCustomer;
.super Ljava/lang/Object;
.source "LauncherCustomer.java"


# static fields
.field private static final CUSTOMER_PATH:Ljava/lang/String; = "/system/csc/"

.field private static final CUSTOMER_XML:Ljava/lang/String; = "customer.xml"

.field private static final KEY_WALLPAPER:Ljava/lang/String; = "wallpaper"

.field private static final LOG_TAG:Ljava/lang/String; = "Launcher.LauncherCustomer"

.field private static final PREF_CUSTOMER:Ljava/lang/String; = "launcherCustomer"

.field private static final STR_DEFAULT_PATH:Ljava/lang/String; = "/system/wallpaper/default_wallpaper/default_wallpaper.jpg"

.field private static final STR_IMAGE_PATH:Ljava/lang/String; = "/system/wallpaper/drawable/"

.field private static final TABLE_FAVORITES:Ljava/lang/String; = "favorites"

.field private static final TAG_APPWIDGET:Ljava/lang/String; = "appwidget"

.field private static final TAG_CLOCK:Ljava/lang/String; = "clock"

.field private static final TAG_DISPLAY:Ljava/lang/String; = "Settings.Main.Display"

.field private static final TAG_FAVORITE:Ljava/lang/String; = "favorite"

.field private static final TAG_FAVORITES:Ljava/lang/String; = "favorites"

.field private static final TAG_FAVOR_CNAME:Ljava/lang/String; = "className"

.field private static final TAG_FAVOR_PNAME:Ljava/lang/String; = "packageName"

.field private static final TAG_FAVOR_SCREEN:Ljava/lang/String; = "screen"

.field private static final TAG_FAVOR_SPANX:Ljava/lang/String; = "launcher_spanX"

.field private static final TAG_FAVOR_SPANY:Ljava/lang/String; = "launcher_spanY"

.field private static final TAG_FAVOR_TYPE:Ljava/lang/String; = "favorite_type"

.field private static final TAG_FAVOR_X:Ljava/lang/String; = "launcher_x"

.field private static final TAG_FAVOR_Y:Ljava/lang/String; = "launcher_y"

.field private static final TAG_LAUNCHER:Ljava/lang/String; = "Launcher"

.field private static final TAG_SAMSUNGAPPWIDGET:Ljava/lang/String; = "samsungappwidget"

.field private static final TAG_SEARCH:Ljava/lang/String; = "search"

.field private static final TAG_WALLPAPER:Ljava/lang/String; = "Wallpaper"

.field private static mCustomerCount:I

.field private static mCustomerList:Lorg/w3c/dom/NodeList;

.field private static mCustomerNode:Lorg/w3c/dom/Node;

.field private static mDoc:Lorg/w3c/dom/Document;

.field private static mRoot:Lorg/w3c/dom/Node;

.field private static sInstance:Lcom/sec/android/app/twlauncher/LauncherCustomer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/sec/android/app/twlauncher/LauncherCustomer;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/LauncherCustomer;-><init>()V

    sput-object v0, Lcom/sec/android/app/twlauncher/LauncherCustomer;->sInstance:Lcom/sec/android/app/twlauncher/LauncherCustomer;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const-string v0, "customer.xml"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->loadXMLFile(Ljava/lang/String;I)V

    .line 81
    return-void
.end method

.method private getAttribute(I)Ljava/lang/String;
    .locals 4
    .parameter "index"

    .prologue
    .line 192
    sget-object v2, Lcom/sec/android/app/twlauncher/LauncherCustomer;->mCustomerList:Lorg/w3c/dom/NodeList;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/sec/android/app/twlauncher/LauncherCustomer;->mCustomerList:Lorg/w3c/dom/NodeList;

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-le v2, p1, :cond_0

    .line 193
    sget-object v2, Lcom/sec/android/app/twlauncher/LauncherCustomer;->mCustomerList:Lorg/w3c/dom/NodeList;

    invoke-interface {v2, p1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 194
    .local v1, list:Lorg/w3c/dom/Element;
    const-string v2, "Wallpaper"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 195
    .local v0, attr:Lorg/w3c/dom/Element;
    const-string v2, "src"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 197
    .end local v0           #attr:Lorg/w3c/dom/Element;
    .end local v1           #list:Lorg/w3c/dom/Element;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getCustomerWallpaer(II)Ljava/lang/String;
    .locals 9
    .parameter "index"
    .parameter "mode"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 201
    const/4 v4, 0x0

    .line 202
    .local v4, wallpaper:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->getAttribute(I)Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, strAttr:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 205
    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 206
    .local v3, strSlash:[Ljava/lang/String;
    array-length v5, v3

    sub-int v0, v5, v7

    .line 208
    .local v0, cntSlash:I
    aget-object v5, v3, v0

    if-eqz v5, :cond_0

    .line 209
    if-nez p2, :cond_1

    .line 210
    aget-object v5, v3, v0

    const-string v6, "[.]"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 212
    .local v2, strDots:[Ljava/lang/String;
    aget-object v5, v2, v8

    if-eqz v5, :cond_0

    aget-object v5, v2, v7

    if-eqz v5, :cond_0

    .line 213
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v2, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_small"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 221
    .end local v0           #cntSlash:I
    .end local v2           #strDots:[Ljava/lang/String;
    .end local v3           #strSlash:[Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v4

    .line 216
    .restart local v0       #cntSlash:I
    .restart local v3       #strSlash:[Ljava/lang/String;
    :cond_1
    if-ne p2, v7, :cond_0

    .line 217
    aget-object v4, v3, v0

    goto :goto_0
.end method

.method private getImageCustomerWallpaper(II)Ljava/lang/String;
    .locals 5
    .parameter "position"
    .parameter "mode"

    .prologue
    const/4 v4, 0x0

    .line 230
    sget v2, Lcom/sec/android/app/twlauncher/LauncherCustomer;->mCustomerCount:I

    if-gt v2, p1, :cond_0

    move-object v2, v4

    .line 245
    :goto_0
    return-object v2

    .line 235
    :cond_0
    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    .line 236
    const-string v1, "/system/wallpaper/default_wallpaper/default_wallpaper.jpg"

    .line 240
    .local v1, imagePath:Ljava/lang/String;
    :goto_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 241
    .local v0, imageFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    move-object v2, v4

    .line 242
    goto :goto_0

    .line 238
    .end local v0           #imageFile:Ljava/io/File;
    .end local v1           #imagePath:Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/system/wallpaper/drawable/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->getCustomerWallpaer(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #imagePath:Ljava/lang/String;
    goto :goto_1

    .line 244
    .restart local v0       #imageFile:Ljava/io/File;
    :cond_2
    const-string v2, "Launcher.LauncherCustomer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getInstance(Ljava/lang/String;I)Lcom/sec/android/app/twlauncher/LauncherCustomer;
    .locals 2
    .parameter "fileName"
    .parameter "mode"

    .prologue
    .line 84
    if-nez p0, :cond_0

    .line 85
    sget-object v0, Lcom/sec/android/app/twlauncher/LauncherCustomer;->sInstance:Lcom/sec/android/app/twlauncher/LauncherCustomer;

    const-string v1, "customer.xml"

    invoke-direct {v0, v1, p1}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->loadXMLFile(Ljava/lang/String;I)V

    .line 88
    :goto_0
    sget-object v0, Lcom/sec/android/app/twlauncher/LauncherCustomer;->sInstance:Lcom/sec/android/app/twlauncher/LauncherCustomer;

    return-object v0

    .line 87
    :cond_0
    sget-object v0, Lcom/sec/android/app/twlauncher/LauncherCustomer;->sInstance:Lcom/sec/android/app/twlauncher/LauncherCustomer;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->loadXMLFile(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private getTagCount(Lorg/w3c/dom/NodeList;)I
    .locals 1
    .parameter "list"

    .prologue
    .line 165
    const/4 v0, 0x0

    .line 166
    .local v0, count:I
    if-eqz p1, :cond_0

    .line 167
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    .line 168
    :cond_0
    return v0
.end method

.method private getTagList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 7
    .parameter "parent"
    .parameter "name"

    .prologue
    .line 139
    sget-object v5, Lcom/sec/android/app/twlauncher/LauncherCustomer;->mDoc:Lorg/w3c/dom/Document;

    if-eqz v5, :cond_0

    if-nez p1, :cond_1

    .line 140
    :cond_0
    const/4 v5, 0x0

    .line 154
    :goto_0
    return-object v5

    .line 142
    :cond_1
    sget-object v5, Lcom/sec/android/app/twlauncher/LauncherCustomer;->mDoc:Lorg/w3c/dom/Document;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 143
    .local v3, list:Lorg/w3c/dom/Element;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 144
    .local v1, children:Lorg/w3c/dom/NodeList;
    if-eqz v1, :cond_3

    .line 145
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    .line 146
    .local v4, n:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v4, :cond_3

    .line 147
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 148
    .local v0, child:Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 149
    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 146
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 154
    .end local v0           #child:Lorg/w3c/dom/Node;
    .end local v2           #i:I
    .end local v4           #n:I
    :cond_3
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    goto :goto_0
.end method

.method private getTagNode(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 5
    .parameter "tagFullName"

    .prologue
    const/4 v4, 0x0

    .line 109
    sget-object v3, Lcom/sec/android/app/twlauncher/LauncherCustomer;->mRoot:Lorg/w3c/dom/Node;

    if-nez v3, :cond_0

    move-object v3, v4

    .line 122
    :goto_0
    return-object v3

    .line 112
    :cond_0
    sget-object v0, Lcom/sec/android/app/twlauncher/LauncherCustomer;->mRoot:Lorg/w3c/dom/Node;

    .line 113
    .local v0, node:Lorg/w3c/dom/Node;
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, "."

    invoke-direct {v2, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .local v2, tokenizer:Ljava/util/StringTokenizer;
    :goto_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 116
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, tagName:Ljava/lang/String;
    if-nez v0, :cond_1

    move-object v3, v4

    .line 118
    goto :goto_0

    .line 119
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 120
    goto :goto_1

    .end local v1           #tagName:Ljava/lang/String;
    :cond_2
    move-object v3, v0

    .line 122
    goto :goto_0
.end method

.method private getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 5
    .parameter "parent"
    .parameter "tagName"

    .prologue
    .line 126
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 127
    .local v1, children:Lorg/w3c/dom/NodeList;
    if-eqz v1, :cond_1

    .line 128
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .line 129
    .local v3, n:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 130
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 131
    .local v0, child:Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v0

    .line 135
    .end local v0           #child:Lorg/w3c/dom/Node;
    .end local v2           #i:I
    .end local v3           #n:I
    :goto_1
    return-object v4

    .line 129
    .restart local v0       #child:Lorg/w3c/dom/Node;
    .restart local v2       #i:I
    .restart local v3       #n:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 135
    .end local v0           #child:Lorg/w3c/dom/Node;
    .end local v2           #i:I
    .end local v3           #n:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private getTagValue(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 1
    .parameter "node"

    .prologue
    .line 158
    if-nez p1, :cond_0

    .line 159
    const/4 v0, 0x0

    .line 161
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private initLauncherCustomer()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 172
    sput-object v0, Lcom/sec/android/app/twlauncher/LauncherCustomer;->mCustomerNode:Lorg/w3c/dom/Node;

    .line 173
    sput-object v0, Lcom/sec/android/app/twlauncher/LauncherCustomer;->mCustomerList:Lorg/w3c/dom/NodeList;

    .line 174
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/twlauncher/LauncherCustomer;->mCustomerCount:I

    .line 175
    return-void
.end method

.method private loadXMLFile(Ljava/lang/String;I)V
    .locals 7
    .parameter "fileName"
    .parameter "mode"

    .prologue
    const-string v6, "Launcher.LauncherCustomer"

    .line 93
    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->initLauncherCustomer()V

    .line 94
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 95
    .local v2, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 96
    .local v0, builder:Ljavax/xml/parsers/DocumentBuilder;
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/system/csc/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v3

    sput-object v3, Lcom/sec/android/app/twlauncher/LauncherCustomer;->mDoc:Lorg/w3c/dom/Document;

    .line 97
    sget-object v3, Lcom/sec/android/app/twlauncher/LauncherCustomer;->mDoc:Lorg/w3c/dom/Document;

    invoke-interface {v3}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v3

    sput-object v3, Lcom/sec/android/app/twlauncher/LauncherCustomer;->mRoot:Lorg/w3c/dom/Node;

    .line 98
    invoke-direct {p0, p2}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->setLauncherCustomer(I)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 106
    .end local v0           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v2           #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 100
    .local v1, ex:Ljavax/xml/parsers/ParserConfigurationException;
    const-string v3, "Launcher.LauncherCustomer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ParserConfigurationException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 101
    .end local v1           #ex:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 102
    .local v1, ex:Lorg/xml/sax/SAXException;
    const-string v3, "Launcher.LauncherCustomer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SAXException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 103
    .end local v1           #ex:Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v3

    move-object v1, v3

    .line 104
    .local v1, ex:Ljava/io/IOException;
    const-string v3, "Launcher.LauncherCustomer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setLauncherCustomer(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 180
    if-nez p1, :cond_1

    .line 181
    const-string v0, "Settings.Main.Display"

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->getTagNode(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/twlauncher/LauncherCustomer;->mCustomerNode:Lorg/w3c/dom/Node;

    .line 182
    sget-object v0, Lcom/sec/android/app/twlauncher/LauncherCustomer;->mCustomerNode:Lorg/w3c/dom/Node;

    const-string v1, "Wallpaper"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->getTagList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/twlauncher/LauncherCustomer;->mCustomerList:Lorg/w3c/dom/NodeList;

    .line 183
    sget-object v0, Lcom/sec/android/app/twlauncher/LauncherCustomer;->mCustomerList:Lorg/w3c/dom/NodeList;

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->getTagCount(Lorg/w3c/dom/NodeList;)I

    move-result v0

    sput v0, Lcom/sec/android/app/twlauncher/LauncherCustomer;->mCustomerCount:I

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 185
    const-string v0, "Launcher"

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->getTagNode(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/twlauncher/LauncherCustomer;->mCustomerNode:Lorg/w3c/dom/Node;

    .line 186
    sget-object v0, Lcom/sec/android/app/twlauncher/LauncherCustomer;->mCustomerNode:Lorg/w3c/dom/Node;

    const-string v1, "favorites"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->getTagList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/twlauncher/LauncherCustomer;->mCustomerList:Lorg/w3c/dom/NodeList;

    .line 187
    sget-object v0, Lcom/sec/android/app/twlauncher/LauncherCustomer;->mCustomerList:Lorg/w3c/dom/NodeList;

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->getTagCount(Lorg/w3c/dom/NodeList;)I

    move-result v0

    sput v0, Lcom/sec/android/app/twlauncher/LauncherCustomer;->mCustomerCount:I

    goto :goto_0
.end method


# virtual methods
.method public addCustomerWallpaper(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 250
    .local p1, mImages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, mThumbs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const v1, 0x7f020029

    .line 251
    .local v1, res:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v3, Lcom/sec/android/app/twlauncher/LauncherCustomer;->mCustomerCount:I

    if-ge v0, v3, :cond_0

    .line 252
    add-int/lit8 v2, v1, 0x1

    .end local v1           #res:I
    .local v2, res:I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    add-int/lit8 v1, v2, 0x1

    .end local v2           #res:I
    .restart local v1       #res:I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 255
    :cond_0
    return-void
.end method

.method public getBitmapCustomerWallpaper(Landroid/content/res/Resources;IILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "res"
    .parameter "resid"
    .parameter "position"
    .parameter "options"

    .prologue
    .line 300
    const/4 v1, 0x1

    invoke-direct {p0, p3, v1}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->getImageCustomerWallpaper(II)Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, imgPath:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 303
    invoke-static {p1, p2, p4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 305
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0, p4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public getCustomerCount()I
    .locals 1

    .prologue
    .line 225
    sget v0, Lcom/sec/android/app/twlauncher/LauncherCustomer;->mCustomerCount:I

    return v0
.end method

.method public getCustomerFavoriteInfo(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "i"
    .parameter "tagName"

    .prologue
    .line 320
    sget-object v1, Lcom/sec/android/app/twlauncher/LauncherCustomer;->mCustomerList:Lorg/w3c/dom/NodeList;

    invoke-interface {v1, p1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 322
    .local v0, node:Lorg/w3c/dom/Node;
    if-nez v0, :cond_0

    .line 323
    const/4 v1, 0x0

    .line 326
    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->getTagValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getCustomerFavoriteInfo(I[Ljava/lang/String;)V
    .locals 3
    .parameter "i"
    .parameter "favoritesInfo"

    .prologue
    .line 330
    sget-object v1, Lcom/sec/android/app/twlauncher/LauncherCustomer;->mCustomerList:Lorg/w3c/dom/NodeList;

    invoke-interface {v1, p1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 332
    .local v0, node:Lorg/w3c/dom/Node;
    if-nez v0, :cond_0

    .line 344
    :goto_0
    return-void

    .line 336
    :cond_0
    const/4 v1, 0x0

    const-string v2, "favorite_type"

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->getTagValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v1

    .line 337
    const/4 v1, 0x1

    const-string v2, "packageName"

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->getTagValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v1

    .line 338
    const/4 v1, 0x2

    const-string v2, "className"

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->getTagValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v1

    .line 339
    const/4 v1, 0x3

    const-string v2, "screen"

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->getTagValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v1

    .line 340
    const/4 v1, 0x4

    const-string v2, "launcher_x"

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->getTagValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v1

    .line 341
    const/4 v1, 0x5

    const-string v2, "launcher_y"

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->getTagValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v1

    .line 342
    const/4 v1, 0x6

    const-string v2, "launcher_spanX"

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->getTagValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v1

    .line 343
    const/4 v1, 0x7

    const-string v2, "launcher_spanY"

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->getTagValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v1

    goto :goto_0
.end method

.method public setCustomerWallpaper(Landroid/app/WallpaperManager;II)V
    .locals 3
    .parameter "wpm"
    .parameter "resid"
    .parameter "position"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 289
    const/4 v2, 0x1

    invoke-direct {p0, p3, v2}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->getImageCustomerWallpaper(II)Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, imgPath:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 291
    invoke-virtual {p1, p2}, Landroid/app/WallpaperManager;->setResource(I)V

    .line 297
    :goto_0
    return-void

    .line 293
    :cond_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 294
    .local v1, stream:Ljava/io/InputStream;
    invoke-virtual {p1, v1}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V

    .line 295
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    goto :goto_0
.end method

.method public setCustomerWallpaper(Landroid/content/Context;)V
    .locals 12
    .parameter "context"

    .prologue
    const/4 v9, 0x0

    const-string v11, "wallpaper"

    .line 259
    const-string v8, "launcherCustomer"

    invoke-virtual {p1, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 260
    .local v4, preferences:Landroid/content/SharedPreferences;
    const-string v8, "wallpaper"

    invoke-interface {v4, v11, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 261
    .local v3, loadCSC:I
    const/4 v8, 0x2

    invoke-direct {p0, v9, v8}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->getImageCustomerWallpaper(II)Ljava/lang/String;

    move-result-object v2

    .line 262
    .local v2, imgPath:Ljava/lang/String;
    const/4 v5, 0x0

    .line 264
    .local v5, stream:Ljava/io/InputStream;
    if-nez v3, :cond_0

    if-nez v2, :cond_1

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    :try_start_0
    const-string v8, "wallpaper"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/WallpaperManager;

    .line 270
    .local v7, wpm:Landroid/app/WallpaperManager;
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 271
    .end local v5           #stream:Ljava/io/InputStream;
    .local v6, stream:Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v7, v6}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 276
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v5, v6

    .line 282
    .end local v6           #stream:Ljava/io/InputStream;
    .end local v7           #wpm:Landroid/app/WallpaperManager;
    .restart local v5       #stream:Ljava/io/InputStream;
    :goto_1
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 283
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v8, "wallpaper"

    const/4 v8, 0x1

    invoke-interface {v1, v11, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 284
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 277
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v5           #stream:Ljava/io/InputStream;
    .restart local v6       #stream:Ljava/io/InputStream;
    .restart local v7       #wpm:Landroid/app/WallpaperManager;
    :catch_0
    move-exception v8

    move-object v5, v6

    .line 280
    .end local v6           #stream:Ljava/io/InputStream;
    .restart local v5       #stream:Ljava/io/InputStream;
    goto :goto_1

    .line 272
    .end local v7           #wpm:Landroid/app/WallpaperManager;
    :catch_1
    move-exception v8

    move-object v0, v8

    .line 273
    .local v0, e:Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v8, "Launcher.LauncherCustomer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to set wallpaper: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 276
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 277
    :catch_2
    move-exception v8

    goto :goto_1

    .line 275
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 276
    :goto_3
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 279
    :goto_4
    throw v8

    .line 277
    :catch_3
    move-exception v9

    goto :goto_4

    .line 275
    .end local v5           #stream:Ljava/io/InputStream;
    .restart local v6       #stream:Ljava/io/InputStream;
    .restart local v7       #wpm:Landroid/app/WallpaperManager;
    :catchall_1
    move-exception v8

    move-object v5, v6

    .end local v6           #stream:Ljava/io/InputStream;
    .restart local v5       #stream:Ljava/io/InputStream;
    goto :goto_3

    .line 272
    .end local v5           #stream:Ljava/io/InputStream;
    .restart local v6       #stream:Ljava/io/InputStream;
    :catch_4
    move-exception v8

    move-object v0, v8

    move-object v5, v6

    .end local v6           #stream:Ljava/io/InputStream;
    .restart local v5       #stream:Ljava/io/InputStream;
    goto :goto_2
.end method

.method public setThumbCustomerWallpaper(Landroid/widget/ImageView;II)V
    .locals 3
    .parameter "image"
    .parameter "resid"
    .parameter "position"

    .prologue
    .line 309
    const/4 v2, 0x0

    invoke-direct {p0, p3, v2}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->getImageCustomerWallpaper(II)Ljava/lang/String;

    move-result-object v1

    .line 311
    .local v1, imgPath:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 312
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 317
    :goto_0
    return-void

    .line 314
    :cond_0
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 315
    .local v0, bm:Landroid/graphics/Bitmap;
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
