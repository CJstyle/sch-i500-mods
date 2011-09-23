.class public Lcom/sec/android/app/cradle/LauncherCustomer;
.super Ljava/lang/Object;
.source "LauncherCustomer.java"


# static fields
.field private static final CUSTOMER_PATH:Ljava/lang/String; = "/system/csc/"

.field private static final CUSTOMER_XML:Ljava/lang/String; = "customer.xml"

.field private static final DEBUG_TAG:Ljava/lang/String; = "LauncherCustomer"

.field private static final KEY_WALLPAPER:Ljava/lang/String; = "wallpaper"

.field private static final PREF_CUSTOMER:Ljava/lang/String; = "launcherCustomer"

.field private static final STR_DEFAULT_PATH:Ljava/lang/String; = "/system/wallpaper/default_wallpaper/default_wallpaper.jpg"

.field private static final STR_IMAGE_PATH:Ljava/lang/String; = "/system/wallpaper/drawable/"

.field private static final TABLE_FAVORITES:Ljava/lang/String; = "favorites"

.field private static final TAG_CLOCK:Ljava/lang/String; = "clock"

.field private static final TAG_DISPLAY:Ljava/lang/String; = "Settings.Main.Display"

.field private static final TAG_FAVORITE:Ljava/lang/String; = "favorite"

.field private static final TAG_FAVORITES:Ljava/lang/String; = "favorites"

.field private static final TAG_FAVOR_CNAME:Ljava/lang/String; = "className"

.field private static final TAG_FAVOR_PNAME:Ljava/lang/String; = "packageName"

.field private static final TAG_FAVOR_SCREEN:Ljava/lang/String; = "screen"

.field private static final TAG_FAVOR_TYPE:Ljava/lang/String; = "favorite_type"

.field private static final TAG_FAVOR_X:Ljava/lang/String; = "launcher_x"

.field private static final TAG_FAVOR_Y:Ljava/lang/String; = "launcher_y"

.field private static final TAG_LAUNCHER:Ljava/lang/String; = "Launcher"

.field private static final TAG_SEARCH:Ljava/lang/String; = "search"

.field private static final TAG_WALLPAPER:Ljava/lang/String; = "Wallpaper"

.field private static mCustomerCount:I

.field private static mCustomerList:Lorg/w3c/dom/NodeList;

.field private static mCustomerNode:Lorg/w3c/dom/Node;

.field private static mDoc:Lorg/w3c/dom/Document;

.field private static mRoot:Lorg/w3c/dom/Node;

.field private static sInstance:Lcom/sec/android/app/cradle/LauncherCustomer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/sec/android/app/cradle/LauncherCustomer;

    invoke-direct {v0}, Lcom/sec/android/app/cradle/LauncherCustomer;-><init>()V

    sput-object v0, Lcom/sec/android/app/cradle/LauncherCustomer;->sInstance:Lcom/sec/android/app/cradle/LauncherCustomer;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const-string v0, "customer.xml"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/cradle/LauncherCustomer;->loadXMLFile(Ljava/lang/String;I)V

    .line 78
    return-void
.end method

.method private getAttribute(I)Ljava/lang/String;
    .locals 4
    .parameter "index"

    .prologue
    .line 189
    sget-object v2, Lcom/sec/android/app/cradle/LauncherCustomer;->mCustomerList:Lorg/w3c/dom/NodeList;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/sec/android/app/cradle/LauncherCustomer;->mCustomerList:Lorg/w3c/dom/NodeList;

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-le v2, p1, :cond_0

    .line 190
    sget-object v2, Lcom/sec/android/app/cradle/LauncherCustomer;->mCustomerList:Lorg/w3c/dom/NodeList;

    invoke-interface {v2, p1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 191
    .local v1, list:Lorg/w3c/dom/Element;
    const-string v2, "Wallpaper"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 192
    .local v0, attr:Lorg/w3c/dom/Element;
    const-string v2, "src"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 194
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

    .line 198
    const/4 v4, 0x0

    .line 199
    .local v4, wallpaper:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/sec/android/app/cradle/LauncherCustomer;->getAttribute(I)Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, strAttr:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 202
    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 203
    .local v3, strSlash:[Ljava/lang/String;
    array-length v5, v3

    sub-int v0, v5, v7

    .line 205
    .local v0, cntSlash:I
    aget-object v5, v3, v0

    if-eqz v5, :cond_0

    .line 206
    if-nez p2, :cond_1

    .line 207
    aget-object v5, v3, v0

    const-string v6, "[.]"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 209
    .local v2, strDots:[Ljava/lang/String;
    aget-object v5, v2, v8

    if-eqz v5, :cond_0

    aget-object v5, v2, v7

    if-eqz v5, :cond_0

    .line 210
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

    .line 218
    .end local v0           #cntSlash:I
    .end local v2           #strDots:[Ljava/lang/String;
    .end local v3           #strSlash:[Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v4

    .line 213
    .restart local v0       #cntSlash:I
    .restart local v3       #strSlash:[Ljava/lang/String;
    :cond_1
    if-ne p2, v7, :cond_0

    .line 214
    aget-object v4, v3, v0

    goto :goto_0
.end method

.method private getImageCustomerWallpaper(II)Ljava/lang/String;
    .locals 5
    .parameter "position"
    .parameter "mode"

    .prologue
    const/4 v4, 0x0

    .line 227
    sget v2, Lcom/sec/android/app/cradle/LauncherCustomer;->mCustomerCount:I

    if-gt v2, p1, :cond_0

    move-object v2, v4

    .line 241
    :goto_0
    return-object v2

    .line 232
    :cond_0
    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    .line 233
    const-string v1, "/system/wallpaper/default_wallpaper/default_wallpaper.jpg"

    .line 237
    .local v1, imagePath:Ljava/lang/String;
    :goto_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 238
    .local v0, imageFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    move-object v2, v4

    .line 239
    goto :goto_0

    .line 235
    .end local v0           #imageFile:Ljava/io/File;
    .end local v1           #imagePath:Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/system/wallpaper/drawable/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/cradle/LauncherCustomer;->getCustomerWallpaer(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #imagePath:Ljava/lang/String;
    goto :goto_1

    .line 241
    .restart local v0       #imageFile:Ljava/io/File;
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getInstance(Ljava/lang/String;I)Lcom/sec/android/app/cradle/LauncherCustomer;
    .locals 2
    .parameter "fileName"
    .parameter "mode"

    .prologue
    .line 81
    if-nez p0, :cond_0

    .line 82
    sget-object v0, Lcom/sec/android/app/cradle/LauncherCustomer;->sInstance:Lcom/sec/android/app/cradle/LauncherCustomer;

    const-string v1, "customer.xml"

    invoke-direct {v0, v1, p1}, Lcom/sec/android/app/cradle/LauncherCustomer;->loadXMLFile(Ljava/lang/String;I)V

    .line 85
    :goto_0
    sget-object v0, Lcom/sec/android/app/cradle/LauncherCustomer;->sInstance:Lcom/sec/android/app/cradle/LauncherCustomer;

    return-object v0

    .line 84
    :cond_0
    sget-object v0, Lcom/sec/android/app/cradle/LauncherCustomer;->sInstance:Lcom/sec/android/app/cradle/LauncherCustomer;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/cradle/LauncherCustomer;->loadXMLFile(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private getTagCount(Lorg/w3c/dom/NodeList;)I
    .locals 1
    .parameter "list"

    .prologue
    .line 162
    const/4 v0, 0x0

    .line 163
    .local v0, count:I
    if-eqz p1, :cond_0

    .line 164
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    .line 165
    :cond_0
    return v0
.end method

.method private getTagList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 7
    .parameter "parent"
    .parameter "name"

    .prologue
    .line 136
    sget-object v5, Lcom/sec/android/app/cradle/LauncherCustomer;->mDoc:Lorg/w3c/dom/Document;

    if-eqz v5, :cond_0

    if-nez p1, :cond_1

    .line 137
    :cond_0
    const/4 v5, 0x0

    .line 151
    :goto_0
    return-object v5

    .line 139
    :cond_1
    sget-object v5, Lcom/sec/android/app/cradle/LauncherCustomer;->mDoc:Lorg/w3c/dom/Document;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 140
    .local v3, list:Lorg/w3c/dom/Element;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 141
    .local v1, children:Lorg/w3c/dom/NodeList;
    if-eqz v1, :cond_3

    .line 142
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    .line 143
    .local v4, n:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v4, :cond_3

    .line 144
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 145
    .local v0, child:Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 146
    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 143
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 151
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

    .line 106
    sget-object v3, Lcom/sec/android/app/cradle/LauncherCustomer;->mRoot:Lorg/w3c/dom/Node;

    if-nez v3, :cond_0

    move-object v3, v4

    .line 119
    :goto_0
    return-object v3

    .line 109
    :cond_0
    sget-object v0, Lcom/sec/android/app/cradle/LauncherCustomer;->mRoot:Lorg/w3c/dom/Node;

    .line 110
    .local v0, node:Lorg/w3c/dom/Node;
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, "."

    invoke-direct {v2, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .local v2, tokenizer:Ljava/util/StringTokenizer;
    :goto_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 113
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, tagName:Ljava/lang/String;
    if-nez v0, :cond_1

    move-object v3, v4

    .line 115
    goto :goto_0

    .line 116
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/cradle/LauncherCustomer;->getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 117
    goto :goto_1

    .end local v1           #tagName:Ljava/lang/String;
    :cond_2
    move-object v3, v0

    .line 119
    goto :goto_0
.end method

.method private getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 5
    .parameter "parent"
    .parameter "tagName"

    .prologue
    .line 123
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 124
    .local v1, children:Lorg/w3c/dom/NodeList;
    if-eqz v1, :cond_1

    .line 125
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .line 126
    .local v3, n:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 127
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 128
    .local v0, child:Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v0

    .line 132
    .end local v0           #child:Lorg/w3c/dom/Node;
    .end local v2           #i:I
    .end local v3           #n:I
    :goto_1
    return-object v4

    .line 126
    .restart local v0       #child:Lorg/w3c/dom/Node;
    .restart local v2       #i:I
    .restart local v3       #n:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 132
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
    .line 155
    if-nez p1, :cond_0

    .line 156
    const/4 v0, 0x0

    .line 158
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

    .line 169
    sput-object v0, Lcom/sec/android/app/cradle/LauncherCustomer;->mCustomerNode:Lorg/w3c/dom/Node;

    .line 170
    sput-object v0, Lcom/sec/android/app/cradle/LauncherCustomer;->mCustomerList:Lorg/w3c/dom/NodeList;

    .line 171
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/cradle/LauncherCustomer;->mCustomerCount:I

    .line 172
    return-void
.end method

.method private loadXMLFile(Ljava/lang/String;I)V
    .locals 7
    .parameter "fileName"
    .parameter "mode"

    .prologue
    const-string v6, "LauncherCustomer"

    .line 90
    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/cradle/LauncherCustomer;->initLauncherCustomer()V

    .line 91
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 92
    .local v2, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 93
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

    sput-object v3, Lcom/sec/android/app/cradle/LauncherCustomer;->mDoc:Lorg/w3c/dom/Document;

    .line 94
    sget-object v3, Lcom/sec/android/app/cradle/LauncherCustomer;->mDoc:Lorg/w3c/dom/Document;

    invoke-interface {v3}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v3

    sput-object v3, Lcom/sec/android/app/cradle/LauncherCustomer;->mRoot:Lorg/w3c/dom/Node;

    .line 95
    invoke-direct {p0, p2}, Lcom/sec/android/app/cradle/LauncherCustomer;->setLauncherCustomer(I)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 103
    .end local v0           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v2           #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 97
    .local v1, ex:Ljavax/xml/parsers/ParserConfigurationException;
    const-string v3, "LauncherCustomer"

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

    .line 98
    .end local v1           #ex:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 99
    .local v1, ex:Lorg/xml/sax/SAXException;
    const-string v3, "LauncherCustomer"

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

    .line 100
    .end local v1           #ex:Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v3

    move-object v1, v3

    .line 101
    .local v1, ex:Ljava/io/IOException;
    const-string v3, "LauncherCustomer"

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
    .line 177
    if-nez p1, :cond_1

    .line 178
    const-string v0, "Settings.Main.Display"

    invoke-direct {p0, v0}, Lcom/sec/android/app/cradle/LauncherCustomer;->getTagNode(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/cradle/LauncherCustomer;->mCustomerNode:Lorg/w3c/dom/Node;

    .line 179
    sget-object v0, Lcom/sec/android/app/cradle/LauncherCustomer;->mCustomerNode:Lorg/w3c/dom/Node;

    const-string v1, "Wallpaper"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/cradle/LauncherCustomer;->getTagList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/cradle/LauncherCustomer;->mCustomerList:Lorg/w3c/dom/NodeList;

    .line 180
    sget-object v0, Lcom/sec/android/app/cradle/LauncherCustomer;->mCustomerList:Lorg/w3c/dom/NodeList;

    invoke-direct {p0, v0}, Lcom/sec/android/app/cradle/LauncherCustomer;->getTagCount(Lorg/w3c/dom/NodeList;)I

    move-result v0

    sput v0, Lcom/sec/android/app/cradle/LauncherCustomer;->mCustomerCount:I

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 182
    const-string v0, "Launcher"

    invoke-direct {p0, v0}, Lcom/sec/android/app/cradle/LauncherCustomer;->getTagNode(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/cradle/LauncherCustomer;->mCustomerNode:Lorg/w3c/dom/Node;

    .line 183
    sget-object v0, Lcom/sec/android/app/cradle/LauncherCustomer;->mCustomerNode:Lorg/w3c/dom/Node;

    const-string v1, "favorites"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/cradle/LauncherCustomer;->getTagList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/cradle/LauncherCustomer;->mCustomerList:Lorg/w3c/dom/NodeList;

    .line 184
    sget-object v0, Lcom/sec/android/app/cradle/LauncherCustomer;->mCustomerList:Lorg/w3c/dom/NodeList;

    invoke-direct {p0, v0}, Lcom/sec/android/app/cradle/LauncherCustomer;->getTagCount(Lorg/w3c/dom/NodeList;)I

    move-result v0

    sput v0, Lcom/sec/android/app/cradle/LauncherCustomer;->mCustomerCount:I

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
    .line 246
    .local p1, mImages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, mThumbs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const v1, 0x7f020029

    .line 247
    .local v1, res:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v3, Lcom/sec/android/app/cradle/LauncherCustomer;->mCustomerCount:I

    if-ge v0, v3, :cond_0

    .line 248
    add-int/lit8 v2, v1, 0x1

    .end local v1           #res:I
    .local v2, res:I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    add-int/lit8 v1, v2, 0x1

    .end local v2           #res:I
    .restart local v1       #res:I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 251
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
    .line 290
    const/4 v1, 0x1

    invoke-direct {p0, p3, v1}, Lcom/sec/android/app/cradle/LauncherCustomer;->getImageCustomerWallpaper(II)Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, imgPath:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 293
    invoke-static {p1, p2, p4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 295
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
    .line 222
    sget v0, Lcom/sec/android/app/cradle/LauncherCustomer;->mCustomerCount:I

    return v0
.end method

.method public getCustomerFavoriteInfo(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "i"
    .parameter "tagName"

    .prologue
    .line 312
    sget-object v1, Lcom/sec/android/app/cradle/LauncherCustomer;->mCustomerList:Lorg/w3c/dom/NodeList;

    invoke-interface {v1, p1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 314
    .local v0, node:Lorg/w3c/dom/Node;
    if-nez v0, :cond_0

    .line 315
    const/4 v1, 0x0

    .line 318
    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/sec/android/app/cradle/LauncherCustomer;->getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/cradle/LauncherCustomer;->getTagValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getCustomerFavoriteInfo(I[Ljava/lang/String;)V
    .locals 3
    .parameter "i"
    .parameter "favoritesInfo"

    .prologue
    .line 322
    sget-object v1, Lcom/sec/android/app/cradle/LauncherCustomer;->mCustomerList:Lorg/w3c/dom/NodeList;

    invoke-interface {v1, p1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 324
    .local v0, node:Lorg/w3c/dom/Node;
    if-nez v0, :cond_0

    .line 334
    :goto_0
    return-void

    .line 328
    :cond_0
    const/4 v1, 0x0

    const-string v2, "favorite_type"

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/cradle/LauncherCustomer;->getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/cradle/LauncherCustomer;->getTagValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v1

    .line 329
    const/4 v1, 0x1

    const-string v2, "packageName"

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/cradle/LauncherCustomer;->getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/cradle/LauncherCustomer;->getTagValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v1

    .line 330
    const/4 v1, 0x2

    const-string v2, "className"

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/cradle/LauncherCustomer;->getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/cradle/LauncherCustomer;->getTagValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v1

    .line 331
    const/4 v1, 0x3

    const-string v2, "screen"

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/cradle/LauncherCustomer;->getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/cradle/LauncherCustomer;->getTagValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v1

    .line 332
    const/4 v1, 0x4

    const-string v2, "launcher_x"

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/cradle/LauncherCustomer;->getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/cradle/LauncherCustomer;->getTagValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v1

    .line 333
    const/4 v1, 0x5

    const-string v2, "launcher_y"

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/cradle/LauncherCustomer;->getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/cradle/LauncherCustomer;->getTagValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

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
    .line 279
    const/4 v2, 0x1

    invoke-direct {p0, p3, v2}, Lcom/sec/android/app/cradle/LauncherCustomer;->getImageCustomerWallpaper(II)Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, imgPath:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 281
    invoke-virtual {p1, p2}, Landroid/app/WallpaperManager;->setResource(I)V

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 284
    .local v1, stream:Ljava/io/InputStream;
    invoke-virtual {p1, v1}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V

    .line 285
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_0
.end method

.method public setCustomerWallpaper(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    const/4 v8, 0x0

    const-string v10, "wallpaper"

    .line 255
    const-string v7, "launcherCustomer"

    invoke-virtual {p1, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 256
    .local v4, preferences:Landroid/content/SharedPreferences;
    const-string v7, "wallpaper"

    invoke-interface {v4, v10, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 257
    .local v3, loadCSC:I
    const/4 v7, 0x2

    invoke-direct {p0, v8, v7}, Lcom/sec/android/app/cradle/LauncherCustomer;->getImageCustomerWallpaper(II)Ljava/lang/String;

    move-result-object v2

    .line 259
    .local v2, imgPath:Ljava/lang/String;
    if-nez v3, :cond_0

    if-nez v2, :cond_1

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    :try_start_0
    const-string v7, "wallpaper"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/WallpaperManager;

    .line 265
    .local v6, wpm:Landroid/app/WallpaperManager;
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 266
    .local v5, stream:Ljava/io/InputStream;
    invoke-virtual {v6, v5}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V

    .line 267
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    .end local v5           #stream:Ljava/io/InputStream;
    .end local v6           #wpm:Landroid/app/WallpaperManager;
    :cond_2
    :goto_1
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 273
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v7, "wallpaper"

    const/4 v7, 0x1

    invoke-interface {v1, v10, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 274
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 268
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v7

    move-object v0, v7

    .line 269
    .local v0, e:Ljava/io/IOException;
    const-string v7, "LauncherCustomer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to set wallpaper: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setThumbCustomerWallpaper(Landroid/widget/ImageView;IILandroid/content/res/Resources;)V
    .locals 4
    .parameter "image"
    .parameter "resid"
    .parameter "position"
    .parameter "twwallpaperResources"

    .prologue
    .line 299
    const/4 v3, 0x0

    invoke-direct {p0, p3, v3}, Lcom/sec/android/app/cradle/LauncherCustomer;->getImageCustomerWallpaper(II)Ljava/lang/String;

    move-result-object v2

    .line 301
    .local v2, imgPath:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 302
    invoke-virtual {p4, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 303
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 309
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-void

    .line 306
    :cond_0
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 307
    .local v0, bm:Landroid/graphics/Bitmap;
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
