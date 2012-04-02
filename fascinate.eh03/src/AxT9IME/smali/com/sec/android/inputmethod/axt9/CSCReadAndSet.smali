.class public Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;
.super Landroid/content/BroadcastReceiver;
.source "CSCReadAndSet.java"


# static fields
.field private static mCustomerNode:Lorg/w3c/dom/Node;

.field private static mDoc:Lorg/w3c/dom/Document;

.field private static mRoot:Lorg/w3c/dom/Node;

.field private static sInstance:Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCscVal_Auto_capitalization:Z

.field private mCscVal_Auto_period:Z

.field private mCscVal_auto_append:Z

.field private mCscVal_auto_subtitution:Z

.field private mCscVal_inputmethod_type:Ljava/lang/String;

.field private mCscVal_keypad_sweeping:Z

.field private mCscVal_lang_de:Z

.field private mCscVal_lang_en_gb:Z

.field private mCscVal_lang_en_us:Z

.field private mCscVal_lang_es:Z

.field private mCscVal_lang_fr:Z

.field private mCscVal_lang_it:Z

.field private mCscVal_lang_ko:Z

.field private mCscVal_lang_nl:Z

.field private mCscVal_lang_pl:Z

.field private mCscVal_lang_pt:Z

.field private mCscVal_lang_tr:Z

.field private mCscVal_next_word_prediction:Z

.field private mCscVal_recapture:Z

.field private mCscVal_recognition_time:Ljava/lang/String;

.field private mCscVal_regional_correction:Z

.field private mCscVal_spell_correction:Z

.field private mCscVal_voice_input_enabled:Z

.field private mCscVal_word_completion:Z

.field private mCscVal_word_completion_point:Ljava/lang/String;

.field private mCscVal_xt9_enabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;

    invoke-direct {v0}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;-><init>()V

    sput-object v0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->sInstance:Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 97
    return-void
.end method

.method private getCustomerPref()Z
    .locals 3

    .prologue
    .line 222
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mContext:Landroid/content/Context;

    const-string v2, "com.sec.android.inputmethod.axt9_preferences"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 224
    .local v0, filePrefs:Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCustomerNode:Lorg/w3c/dom/Node;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    .line 225
    :cond_0
    const/4 v1, 0x1

    .line 231
    .end local v0           #filePrefs:Ljava/io/File;
    :goto_0
    return v1

    .line 227
    :catch_0
    move-exception v1

    .line 231
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;
    .locals 2
    .parameter "fileName"

    .prologue
    .line 100
    if-nez p0, :cond_0

    .line 101
    sget-object v0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->sInstance:Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;

    const-string v1, "others.xml"

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->loadXMLFile(Ljava/lang/String;)V

    .line 104
    :goto_0
    sget-object v0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->sInstance:Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;

    return-object v0

    .line 103
    :cond_0
    sget-object v0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->sInstance:Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->loadXMLFile(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 6
    .parameter "parent"
    .parameter "tagName"

    .prologue
    const/4 v5, 0x0

    .line 149
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v4, v5

    .line 167
    :goto_0
    return-object v4

    .line 155
    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 156
    .local v1, children:Lorg/w3c/dom/NodeList;
    if-eqz v1, :cond_3

    .line 157
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .line 158
    .local v3, n:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_3

    .line 159
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 160
    .local v0, child:Lorg/w3c/dom/Node;
    if-eqz v0, :cond_2

    .line 162
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v0

    .line 163
    goto :goto_0

    .line 158
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0           #child:Lorg/w3c/dom/Node;
    .end local v2           #i:I
    .end local v3           #n:I
    :cond_3
    move-object v4, v5

    .line 167
    goto :goto_0
.end method

.method private getTagValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "tagFullName"

    .prologue
    const/4 v2, 0x0

    .line 171
    if-eqz p1, :cond_0

    sget-object v1, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCustomerNode:Lorg/w3c/dom/Node;

    if-nez v1, :cond_1

    :cond_0
    move-object v1, v2

    .line 183
    :goto_0
    return-object v1

    .line 177
    :cond_1
    sget-object v1, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCustomerNode:Lorg/w3c/dom/Node;

    invoke-direct {p0, v1, p1}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 179
    .local v0, node:Lorg/w3c/dom/Node;
    if-eqz v0, :cond_2

    .line 180
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v2

    .line 183
    goto :goto_0
.end method

.method private getTagValueReturnBoolean(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "tagFullName"
    .parameter "defValue"

    .prologue
    .line 187
    if-nez p1, :cond_0

    .line 188
    const/4 v2, 0x0

    .line 202
    :goto_0
    return v2

    .line 193
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, tagValue:Ljava/lang/String;
    move v1, p2

    .line 197
    .local v1, value:Z
    const-string v2, "on"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 198
    const/4 v1, 0x1

    :cond_1
    :goto_1
    move v2, v1

    .line 202
    goto :goto_0

    .line 199
    :cond_2
    const-string v2, "off"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 200
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getTagValueReturnString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "tagFullName"
    .parameter "defValue"

    .prologue
    .line 206
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 207
    :cond_0
    const/4 v1, 0x0

    .line 216
    :goto_0
    return-object v1

    .line 211
    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, tagValue:Ljava/lang/String;
    if-nez v0, :cond_2

    move-object v1, p2

    .line 214
    goto :goto_0

    :cond_2
    move-object v1, v0

    .line 216
    goto :goto_0
.end method

.method private loadXMLFile(Ljava/lang/String;)V
    .locals 5
    .parameter "fileName"

    .prologue
    .line 119
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 120
    .local v1, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 121
    .local v0, builder:Ljavax/xml/parsers/DocumentBuilder;
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/system/csc/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v2

    sput-object v2, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mDoc:Lorg/w3c/dom/Document;

    .line 122
    sget-object v2, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mDoc:Lorg/w3c/dom/Document;

    if-nez v2, :cond_1

    .line 146
    .end local v0           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v1           #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    :cond_0
    :goto_0
    return-void

    .line 127
    .restart local v0       #builder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v1       #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    :cond_1
    sget-object v2, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mDoc:Lorg/w3c/dom/Document;

    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    sput-object v2, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mRoot:Lorg/w3c/dom/Node;

    .line 128
    sget-object v2, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mRoot:Lorg/w3c/dom/Node;

    if-eqz v2, :cond_0

    .line 133
    sget-object v2, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mRoot:Lorg/w3c/dom/Node;

    const-string v3, "SamsungKeypad"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    sput-object v2, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCustomerNode:Lorg/w3c/dom/Node;

    .line 134
    sget-object v2, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCustomerNode:Lorg/w3c/dom/Node;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    goto :goto_0

    .line 143
    .end local v0           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v1           #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 141
    :catch_1
    move-exception v2

    goto :goto_0

    .line 139
    :catch_2
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 111
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getInstance(Ljava/lang/String;)Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;

    move-result-object v0

    .line 112
    .local v0, cscInstance:Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;
    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0, p1}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->setCustomerCSC(Landroid/content/Context;)V

    .line 115
    :cond_0
    return-void
.end method

.method public setCustomerCSC(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v8, "Auto_capitalization"

    const-string v7, "2"

    const-string v6, "0"

    .line 236
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mContext:Landroid/content/Context;

    .line 237
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getCustomerPref()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCustomerNode:Lorg/w3c/dom/Node;

    if-nez v2, :cond_1

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    const-string v2, "inputmethod_type"

    const-string v3, "QwertyKeypad"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_inputmethod_type:Ljava/lang/String;

    .line 245
    const-string v2, "xt9_enabled"

    invoke-direct {p0, v2, v4}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_xt9_enabled:Z

    .line 246
    const-string v2, "word_completion"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_word_completion:Z

    .line 247
    const-string v2, "word_completion_point"

    const-string v3, "2"

    invoke-direct {p0, v2, v7}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_word_completion_point:Ljava/lang/String;

    .line 248
    const-string v2, "spell_correction"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_spell_correction:Z

    .line 249
    const-string v2, "next_word_prediction"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_next_word_prediction:Z

    .line 250
    const-string v2, "auto_append"

    invoke-direct {p0, v2, v4}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_auto_append:Z

    .line 251
    const-string v2, "auto_subtitution"

    invoke-direct {p0, v2, v4}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_auto_subtitution:Z

    .line 252
    const-string v2, "regional_correction"

    invoke-direct {p0, v2, v4}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_regional_correction:Z

    .line 253
    const-string v2, "recapture"

    invoke-direct {p0, v2, v4}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_recapture:Z

    .line 254
    const-string v2, "keypad_sweeping"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_keypad_sweeping:Z

    .line 255
    const-string v2, "Auto_capitalization"

    invoke-direct {p0, v8, v5}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_Auto_capitalization:Z

    .line 256
    const-string v2, "recognition_time"

    const-string v3, "500"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_recognition_time:Ljava/lang/String;

    .line 257
    const-string v2, "Auto_period"

    invoke-direct {p0, v2, v4}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_Auto_period:Z

    .line 258
    const-string v2, "voice_input_enabled"

    invoke-direct {p0, v2, v5}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_voice_input_enabled:Z

    .line 259
    const-string v2, "lang_en_gb"

    invoke-direct {p0, v2, v4}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_en_gb:Z

    .line 260
    const-string v2, "lang_en_us"

    invoke-direct {p0, v2, v4}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_en_us:Z

    .line 261
    const-string v2, "lang_de"

    invoke-direct {p0, v2, v4}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_de:Z

    .line 262
    const-string v2, "lang_nl"

    invoke-direct {p0, v2, v4}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_nl:Z

    .line 263
    const-string v2, "lang_pl"

    invoke-direct {p0, v2, v4}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_pl:Z

    .line 264
    const-string v2, "lang_fr"

    invoke-direct {p0, v2, v4}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_fr:Z

    .line 265
    const-string v2, "lang_it"

    invoke-direct {p0, v2, v4}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_it:Z

    .line 266
    const-string v2, "lang_pt"

    invoke-direct {p0, v2, v4}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_pt:Z

    .line 267
    const-string v2, "lang_es"

    invoke-direct {p0, v2, v4}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_es:Z

    .line 268
    const-string v2, "lang_tr"

    invoke-direct {p0, v2, v4}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_tr:Z

    .line 269
    const-string v2, "lang_ko"

    invoke-direct {p0, v2, v4}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_ko:Z

    .line 286
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_inputmethod_type:Ljava/lang/String;

    const-string v3, "QwertyKeypad"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 287
    const-string v2, "0"

    iput-object v6, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_inputmethod_type:Ljava/lang/String;

    .line 300
    :goto_1
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mContext:Landroid/content/Context;

    const-string v3, "com.sec.android.inputmethod.axt9_preferences"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 301
    .local v1, sPrefs:Landroid/content/SharedPreferences;
    if-eqz v1, :cond_0

    .line 306
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 307
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_0

    .line 311
    const-string v2, "inputmethod_type"

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_inputmethod_type:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 312
    const-string v2, "xt9_enabled"

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_xt9_enabled:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 313
    const-string v2, "word_completion"

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_word_completion:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 314
    const-string v2, "word_completion_point"

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_word_completion_point:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 315
    const-string v2, "spell_correction"

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_spell_correction:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 316
    const-string v2, "next_word_prediction"

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_next_word_prediction:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 317
    const-string v2, "auto_append"

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_auto_append:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 318
    const-string v2, "auto_subtitution"

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_auto_subtitution:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 319
    const-string v2, "regional_correction"

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_regional_correction:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 320
    const-string v2, "recapture"

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_recapture:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 321
    const-string v2, "keypad_sweeping"

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_keypad_sweeping:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 322
    const-string v2, "Auto_capitalization"

    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_Auto_capitalization:Z

    invoke-interface {v0, v8, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 323
    const-string v2, "recognition_time"

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_recognition_time:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 324
    const-string v2, "Auto_period"

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_Auto_period:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 325
    const-string v2, "voice_input_enabled"

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_voice_input_enabled:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 326
    const-string v2, "English(UK)"

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_en_gb:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 327
    const-string v2, "English(US)"

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_en_us:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 328
    const-string v2, "Deutsch"

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_de:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 329
    const-string v2, "Nederlands"

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_nl:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 330
    const-string v2, "Polski"

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_pl:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 331
    const-string v2, "Fran\ufffd\ufffdais"

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_fr:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 332
    const-string v2, "Italiano"

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_it:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 333
    const-string v2, "Portugu\ufffd\ufffds"

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_pt:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 334
    const-string v2, "Espa\ufffd\ufffdol"

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_es:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 335
    const-string v2, "T\ufffd\ufffdrk\ufffd\ufffde"

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_tr:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 336
    const-string v2, "\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd"

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_lang_ko:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 339
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    if-ne v2, v5, :cond_0

    goto/16 :goto_0

    .line 288
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #sPrefs:Landroid/content/SharedPreferences;
    :cond_2
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_inputmethod_type:Ljava/lang/String;

    const-string v3, "3x4Keypad"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 289
    const-string v2, "1"

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_inputmethod_type:Ljava/lang/String;

    goto/16 :goto_1

    .line 290
    :cond_3
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_inputmethod_type:Ljava/lang/String;

    const-string v3, "HandwritingBox1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 291
    const-string v2, "2"

    iput-object v7, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_inputmethod_type:Ljava/lang/String;

    goto/16 :goto_1

    .line 292
    :cond_4
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_inputmethod_type:Ljava/lang/String;

    const-string v3, "HandwritingBox2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 293
    const-string v2, "3"

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_inputmethod_type:Ljava/lang/String;

    goto/16 :goto_1

    .line 295
    :cond_5
    const-string v2, "0"

    iput-object v6, p0, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->mCscVal_inputmethod_type:Ljava/lang/String;

    goto/16 :goto_1
.end method
