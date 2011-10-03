.class public Lcom/android/settings/flipfont/TypefaceFinder;
.super Ljava/lang/Object;
.source "TypefaceFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/flipfont/TypefaceFinder$TypefaceSortByName;
    }
.end annotation


# static fields
.field public static final DEFAULT_FONT_VALUE:Ljava/lang/String; = "default"

.field static final FONT_ASSET_DIR:Ljava/lang/String; = "xml"


# instance fields
.field public context:Landroid/content/Context;

.field public final mTypefaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/flipfont/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    .line 181
    return-void
.end method


# virtual methods
.method public findMatchingTypeface(Ljava/lang/String;)Lcom/android/settings/flipfont/Typeface;
    .locals 3
    .parameter "typefaceFilename"

    .prologue
    .line 345
    const/4 v1, 0x0

    .line 349
    .local v1, typeface:Lcom/android/settings/flipfont/Typeface;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 353
    iget-object v2, p0, Lcom/android/settings/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #typeface:Lcom/android/settings/flipfont/Typeface;
    check-cast v1, Lcom/android/settings/flipfont/Typeface;

    .line 355
    .restart local v1       #typeface:Lcom/android/settings/flipfont/Typeface;
    invoke-virtual {v1}, Lcom/android/settings/flipfont/Typeface;->getTypefaceFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 363
    :cond_0
    return-object v1

    .line 349
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public findTypefaces(Landroid/content/res/AssetManager;Ljava/lang/String;)Z
    .locals 6
    .parameter "assetManager"
    .parameter "fontPackageName"

    .prologue
    .line 83
    const/4 v3, 0x0

    .line 87
    .local v3, xmlfiles:[Ljava/lang/String;
    :try_start_0
    const-string v4, "xml"

    invoke-virtual {p1, v4}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 101
    const/4 v1, 0x0

    .line 103
    .local v1, i:I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 107
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "xml/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 109
    .local v2, in:Ljava/io/InputStream;
    aget-object v4, v3, v1

    invoke-virtual {p0, v4, v2, p2}, Lcom/android/settings/flipfont/TypefaceFinder;->parseTypefaceXml(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 119
    .end local v2           #in:Ljava/io/InputStream;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    .end local v1           #i:I
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 93
    .local v0, ex:Ljava/lang/Exception;
    const/4 v4, 0x0

    .line 123
    .end local v0           #ex:Ljava/lang/Exception;
    :goto_2
    return v4

    .restart local v1       #i:I
    :cond_0
    const/4 v4, 0x1

    goto :goto_2

    .line 113
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method public getMonospaceEntries(Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 4
    .parameter "entries"
    .parameter "entryValues"

    .prologue
    .line 303
    iget-object v2, p0, Lcom/android/settings/flipfont/TypefaceFinder;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090554

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 305
    const-string v2, "default"

    invoke-virtual {p2, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 309
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 313
    iget-object v2, p0, Lcom/android/settings/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/flipfont/Typeface;

    invoke-virtual {v2}, Lcom/android/settings/flipfont/Typeface;->getMonospaceName()Ljava/lang/String;

    move-result-object v1

    .line 315
    .local v1, s:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 319
    invoke-virtual {p1, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 321
    iget-object v2, p0, Lcom/android/settings/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/flipfont/Typeface;

    invoke-virtual {v2}, Lcom/android/settings/flipfont/Typeface;->getTypefaceFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 309
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 327
    .end local v1           #s:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public getSansEntries(Ljava/util/Vector;Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 4
    .parameter "entries"
    .parameter "entryValues"
    .parameter "fontPackageName"

    .prologue
    .line 209
    iget-object v2, p0, Lcom/android/settings/flipfont/TypefaceFinder;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090554

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 211
    const-string v2, "default"

    invoke-virtual {p2, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 213
    const-string v2, ""

    invoke-virtual {p3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 219
    iget-object v2, p0, Lcom/android/settings/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    new-instance v3, Lcom/android/settings/flipfont/TypefaceFinder$TypefaceSortByName;

    invoke-direct {v3, p0}, Lcom/android/settings/flipfont/TypefaceFinder$TypefaceSortByName;-><init>(Lcom/android/settings/flipfont/TypefaceFinder;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 223
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 227
    iget-object v2, p0, Lcom/android/settings/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/flipfont/Typeface;

    invoke-virtual {v2}, Lcom/android/settings/flipfont/Typeface;->getSansName()Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, s:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 233
    invoke-virtual {p1, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 235
    iget-object v2, p0, Lcom/android/settings/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/flipfont/Typeface;

    invoke-virtual {v2}, Lcom/android/settings/flipfont/Typeface;->getTypefaceFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 237
    iget-object v2, p0, Lcom/android/settings/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/flipfont/Typeface;

    invoke-virtual {v2}, Lcom/android/settings/flipfont/Typeface;->getFontPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 223
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 243
    .end local v1           #s:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public getSerifEntries(Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 4
    .parameter "entries"
    .parameter "entryValues"

    .prologue
    .line 261
    iget-object v2, p0, Lcom/android/settings/flipfont/TypefaceFinder;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090554

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 263
    const-string v2, "default"

    invoke-virtual {p2, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 267
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 271
    iget-object v2, p0, Lcom/android/settings/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/flipfont/Typeface;

    invoke-virtual {v2}, Lcom/android/settings/flipfont/Typeface;->getSerifName()Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, s:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 277
    invoke-virtual {p1, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 279
    iget-object v2, p0, Lcom/android/settings/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/flipfont/Typeface;

    invoke-virtual {v2}, Lcom/android/settings/flipfont/Typeface;->getTypefaceFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 267
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 285
    .end local v1           #s:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public parseTypefaceXml(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 6
    .parameter "xmlFilename"
    .parameter "inStream"
    .parameter "fontPackageName"

    .prologue
    .line 139
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v3

    .line 141
    .local v3, spf:Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 143
    .local v2, sp:Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v4

    .line 147
    .local v4, xr:Lorg/xml/sax/XMLReader;
    new-instance v0, Lcom/android/settings/flipfont/TypefaceParser;

    invoke-direct {v0}, Lcom/android/settings/flipfont/TypefaceParser;-><init>()V

    .line 149
    .local v0, fontParser:Lcom/android/settings/flipfont/TypefaceParser;
    invoke-interface {v4, v0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 151
    new-instance v5, Lorg/xml/sax/InputSource;

    invoke-direct {v5, p2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v4, v5}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 155
    invoke-virtual {v0}, Lcom/android/settings/flipfont/TypefaceParser;->getParsedData()Lcom/android/settings/flipfont/Typeface;

    move-result-object v1

    .line 159
    .local v1, newTypeface:Lcom/android/settings/flipfont/Typeface;
    invoke-virtual {v1, p1}, Lcom/android/settings/flipfont/Typeface;->setTypefaceFilename(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v1, p3}, Lcom/android/settings/flipfont/Typeface;->setFontPackageName(Ljava/lang/String;)V

    .line 163
    iget-object v5, p0, Lcom/android/settings/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    .end local v0           #fontParser:Lcom/android/settings/flipfont/TypefaceParser;
    .end local v1           #newTypeface:Lcom/android/settings/flipfont/Typeface;
    .end local v2           #sp:Ljavax/xml/parsers/SAXParser;
    .end local v3           #spf:Ljavax/xml/parsers/SAXParserFactory;
    .end local v4           #xr:Lorg/xml/sax/XMLReader;
    :goto_0
    return-void

    .line 167
    :catch_0
    move-exception v5

    goto :goto_0
.end method
