.class public Lcom/android/mms/MmsConfig;
.super Ljava/lang/Object;
.source "MmsConfig.java"


# static fields
.field public static SMS_DB_COUNT:I

.field private static mAliasEnabled:Z

.field private static mAliasRuleMaxChars:I

.field private static mAliasRuleMinChars:I

.field private static mAllowAttachAudio:Z

.field private static mDefaultMMSMessagesPerThread:I

.field private static mDefaultSMSMessagesPerThread:I

.field private static mEmailGateway:Ljava/lang/String;

.field private static mHttpParams:Ljava/lang/String;

.field private static mHttpParamsLine1Key:Ljava/lang/String;

.field private static mHttpSocketTimeout:I

.field private static mMaxImageHeight:I

.field private static mMaxImageWidth:I

.field private static mMaxMessageCountPerThread:I

.field private static mMaxMessageSize:I

.field private static mMaxSizeScaleForPendingMmsAllowed:I

.field private static mMinMessageCountPerThread:I

.field private static mMinimumSlideElementDuration:I

.field private static mMmsEnabled:I

.field private static mMmsHeaderSize:I

.field private static mNotifyWapMMSC:Z

.field private static mOptionalFieldAttendance:Z

.field private static mRecipientLimit:I

.field private static mSmsToMmsTextThreshold:I

.field private static mTransIdEnabled:Z

.field private static mTransactionLoggable:Z

.field private static mUaDebugSet:Z

.field private static mUaProfTagName:Ljava/lang/String;

.field private static mUaProfUrl:Ljava/lang/String;

.field private static mUaProfUrlDebug:Ljava/lang/String;

.field private static mUserAgent:Ljava/lang/String;

.field private static mUserAgentDebug:Ljava/lang/String;

.field private static mUserNai:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 44
    sput v2, Lcom/android/mms/MmsConfig;->SMS_DB_COUNT:I

    .line 61
    sput-boolean v2, Lcom/android/mms/MmsConfig;->mTransIdEnabled:Z

    .line 62
    sput v3, Lcom/android/mms/MmsConfig;->mMmsEnabled:I

    .line 63
    const v0, 0x12c000

    sput v0, Lcom/android/mms/MmsConfig;->mMaxMessageSize:I

    .line 64
    const/16 v0, 0x1400

    sput v0, Lcom/android/mms/MmsConfig;->mMmsHeaderSize:I

    .line 65
    const-string v0, "sami500"

    sput-object v0, Lcom/android/mms/MmsConfig;->mUserAgent:Ljava/lang/String;

    .line 66
    const-string v0, "Profile"

    sput-object v0, Lcom/android/mms/MmsConfig;->mUaProfTagName:Ljava/lang/String;

    .line 67
    sput-object v1, Lcom/android/mms/MmsConfig;->mUserNai:Ljava/lang/String;

    .line 68
    const-string v0, "http://uaprof.vtext.com/sam/i500/i500.xml"

    sput-object v0, Lcom/android/mms/MmsConfig;->mUaProfUrl:Ljava/lang/String;

    .line 69
    sput-object v1, Lcom/android/mms/MmsConfig;->mHttpParams:Ljava/lang/String;

    .line 70
    sput-object v1, Lcom/android/mms/MmsConfig;->mHttpParamsLine1Key:Ljava/lang/String;

    .line 71
    sput-object v1, Lcom/android/mms/MmsConfig;->mEmailGateway:Ljava/lang/String;

    .line 72
    const/16 v0, 0x1e0

    sput v0, Lcom/android/mms/MmsConfig;->mMaxImageHeight:I

    .line 73
    const/16 v0, 0x280

    sput v0, Lcom/android/mms/MmsConfig;->mMaxImageWidth:I

    .line 74
    const v0, 0x7fffffff

    sput v0, Lcom/android/mms/MmsConfig;->mRecipientLimit:I

    .line 75
    const/16 v0, 0xc8

    sput v0, Lcom/android/mms/MmsConfig;->mDefaultSMSMessagesPerThread:I

    .line 76
    const/16 v0, 0x14

    sput v0, Lcom/android/mms/MmsConfig;->mDefaultMMSMessagesPerThread:I

    .line 77
    sput v4, Lcom/android/mms/MmsConfig;->mMinMessageCountPerThread:I

    .line 78
    const/16 v0, 0x1388

    sput v0, Lcom/android/mms/MmsConfig;->mMaxMessageCountPerThread:I

    .line 79
    sput v5, Lcom/android/mms/MmsConfig;->mSmsToMmsTextThreshold:I

    .line 80
    const v0, 0xea60

    sput v0, Lcom/android/mms/MmsConfig;->mHttpSocketTimeout:I

    .line 81
    const/16 v0, 0x1388

    sput v0, Lcom/android/mms/MmsConfig;->mMinimumSlideElementDuration:I

    .line 82
    sput-boolean v3, Lcom/android/mms/MmsConfig;->mNotifyWapMMSC:Z

    .line 83
    sput-boolean v3, Lcom/android/mms/MmsConfig;->mAllowAttachAudio:Z

    .line 85
    sput-boolean v3, Lcom/android/mms/MmsConfig;->mTransactionLoggable:Z

    .line 86
    sput-boolean v2, Lcom/android/mms/MmsConfig;->mUaDebugSet:Z

    .line 87
    sput-object v1, Lcom/android/mms/MmsConfig;->mUserAgentDebug:Ljava/lang/String;

    .line 88
    sput-object v1, Lcom/android/mms/MmsConfig;->mUaProfUrlDebug:Ljava/lang/String;

    .line 90
    sput-boolean v2, Lcom/android/mms/MmsConfig;->mOptionalFieldAttendance:Z

    .line 95
    sput v5, Lcom/android/mms/MmsConfig;->mMaxSizeScaleForPendingMmsAllowed:I

    .line 98
    sput-boolean v2, Lcom/android/mms/MmsConfig;->mAliasEnabled:Z

    .line 99
    sput v4, Lcom/android/mms/MmsConfig;->mAliasRuleMinChars:I

    .line 100
    const/16 v0, 0x30

    sput v0, Lcom/android/mms/MmsConfig;->mAliasRuleMaxChars:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 4
    .parameter "parser"
    .parameter "firstElementName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 301
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, type:I
    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 305
    :cond_1
    if-eq v0, v2, :cond_2

    .line 306
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "No start tag found"

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 309
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 310
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected start tag: found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 313
    :cond_3
    return-void
.end method

.method public static getAliasMaxChars()I
    .locals 1

    .prologue
    .line 233
    sget v0, Lcom/android/mms/MmsConfig;->mAliasRuleMaxChars:I

    return v0
.end method

.method public static getAliasMinChars()I
    .locals 1

    .prologue
    .line 229
    sget v0, Lcom/android/mms/MmsConfig;->mAliasRuleMinChars:I

    return v0
.end method

.method public static getAllowAttachAudio()Z
    .locals 1

    .prologue
    .line 237
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mAllowAttachAudio:Z

    return v0
.end method

.method public static getDefaultMMSMessagesPerThread()I
    .locals 1

    .prologue
    .line 193
    sget v0, Lcom/android/mms/MmsConfig;->mDefaultMMSMessagesPerThread:I

    return v0
.end method

.method public static getDefaultSMSMessagesPerThread()I
    .locals 1

    .prologue
    .line 189
    sget v0, Lcom/android/mms/MmsConfig;->mDefaultSMSMessagesPerThread:I

    return v0
.end method

.method public static getEmailGateway()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    sget-object v0, Lcom/android/mms/MmsConfig;->mEmailGateway:Ljava/lang/String;

    return-object v0
.end method

.method public static getHttpParams()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    sget-object v0, Lcom/android/mms/MmsConfig;->mHttpParams:Ljava/lang/String;

    return-object v0
.end method

.method public static getHttpParamsLine1Key()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    sget-object v0, Lcom/android/mms/MmsConfig;->mHttpParamsLine1Key:Ljava/lang/String;

    return-object v0
.end method

.method public static getHttpSocketTimeout()I
    .locals 1

    .prologue
    .line 209
    sget v0, Lcom/android/mms/MmsConfig;->mHttpSocketTimeout:I

    return v0
.end method

.method public static getMaxContentsSize()I
    .locals 2

    .prologue
    .line 138
    sget v0, Lcom/android/mms/MmsConfig;->mMaxMessageSize:I

    sget v1, Lcom/android/mms/MmsConfig;->mMmsHeaderSize:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public static getMaxImageHeight()I
    .locals 1

    .prologue
    .line 177
    sget v0, Lcom/android/mms/MmsConfig;->mMaxImageHeight:I

    return v0
.end method

.method public static getMaxImageWidth()I
    .locals 1

    .prologue
    .line 181
    sget v0, Lcom/android/mms/MmsConfig;->mMaxImageWidth:I

    return v0
.end method

.method public static getMaxMessageCountPerThread()I
    .locals 1

    .prologue
    .line 201
    sget v0, Lcom/android/mms/MmsConfig;->mMaxMessageCountPerThread:I

    return v0
.end method

.method public static getMaxMessageSize()I
    .locals 1

    .prologue
    .line 134
    sget v0, Lcom/android/mms/MmsConfig;->mMaxMessageSize:I

    return v0
.end method

.method public static getMaxSizeScaleForPendingMmsAllowed()I
    .locals 1

    .prologue
    .line 221
    sget v0, Lcom/android/mms/MmsConfig;->mMaxSizeScaleForPendingMmsAllowed:I

    return v0
.end method

.method public static getMinMessageCountPerThread()I
    .locals 1

    .prologue
    .line 197
    sget v0, Lcom/android/mms/MmsConfig;->mMinMessageCountPerThread:I

    return v0
.end method

.method public static getMinimumSlideElementDuration()I
    .locals 1

    .prologue
    .line 213
    sget v0, Lcom/android/mms/MmsConfig;->mMinimumSlideElementDuration:I

    return v0
.end method

.method public static getMmsEnabled()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 126
    sget v0, Lcom/android/mms/MmsConfig;->mMmsEnabled:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getNotifyWapMMSC()Z
    .locals 1

    .prologue
    .line 217
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mNotifyWapMMSC:Z

    return v0
.end method

.method public static getOptionalFieldAttendance()Z
    .locals 1

    .prologue
    .line 279
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mOptionalFieldAttendance:Z

    return v0
.end method

.method public static getRecipientLimit()I
    .locals 1

    .prologue
    .line 185
    sget v0, Lcom/android/mms/MmsConfig;->mRecipientLimit:I

    return v0
.end method

.method public static getSmsToMmsTextThreshold()I
    .locals 1

    .prologue
    .line 205
    sget v0, Lcom/android/mms/MmsConfig;->mSmsToMmsTextThreshold:I

    return v0
.end method

.method public static getTransIdEnabled()Z
    .locals 1

    .prologue
    .line 147
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mTransIdEnabled:Z

    return v0
.end method

.method public static getTransactionLoggable()Z
    .locals 1

    .prologue
    .line 245
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mTransactionLoggable:Z

    return v0
.end method

.method public static getUaProfTagName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/android/mms/MmsConfig;->mUaProfTagName:Ljava/lang/String;

    return-object v0
.end method

.method public static getUaProfUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mUaDebugSet:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/mms/MmsConfig;->mUaProfUrlDebug:Ljava/lang/String;

    .line 161
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/mms/MmsConfig;->mUaProfUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mUaDebugSet:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/mms/MmsConfig;->mUserAgentDebug:Ljava/lang/String;

    .line 152
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/mms/MmsConfig;->mUserAgent:Ljava/lang/String;

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 107
    invoke-static {p0}, Lcom/android/mms/MmsConfig;->loadMmsSettings(Landroid/content/Context;)V

    .line 110
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.mms.transaction.debugsettingready"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 112
    return-void
.end method

.method public static isAliasEnabled()Z
    .locals 1

    .prologue
    .line 225
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mAliasEnabled:Z

    return v0
.end method

.method private static loadMmsSettings(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 325
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 326
    .local v1, parser:Landroid/content/res/XmlResourceParser;
    const-string v0, "Mms/MmsConfig"

    const-string v2, "[loadMmsSettings] "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :try_start_0
    const-string v0, "mms_config"

    invoke-static {v1, v0}, Lcom/android/mms/MmsConfig;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 331
    :goto_0
    invoke-static {v1}, Lcom/android/mms/MmsConfig;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 332
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 333
    .local v3, tag:Ljava/lang/String;
    if-nez v3, :cond_1

    .line 438
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 441
    .end local v3           #tag:Ljava/lang/String;
    .end local p0
    :goto_1
    const/4 p0, 0x0

    .line 443
    .local p0, errorStr:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/mms/MmsConfig;->mUaProfUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 444
    const-string p0, "uaProfUrl"

    .line 447
    :cond_0
    if-eqz p0, :cond_1e

    .line 448
    const-string v0, "MmsConfig.loadMmsSettings mms_config.xml missing %s setting"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .end local v1           #parser:Landroid/content/res/XmlResourceParser;
    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 451
    .local p0, err:Ljava/lang/String;
    const-string v0, "Mms/MmsConfig"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    new-instance v0, Lcom/android/mms/ContentRestrictionException;

    invoke-direct {v0, p0}, Lcom/android/mms/ContentRestrictionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    .restart local v1       #parser:Landroid/content/res/XmlResourceParser;
    .restart local v3       #tag:Ljava/lang/String;
    .local p0, context:Landroid/content/Context;
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v1, v0}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 337
    .local v0, name:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    .line 338
    .local v5, value:Ljava/lang/String;
    const/4 v2, 0x0

    .line 339
    .local v2, text:Ljava/lang/String;
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    const/4 v6, 0x4

    if-ne v4, v6, :cond_20

    .line 340
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    .line 347
    .end local v2           #text:Ljava/lang/String;
    .local v4, text:Ljava/lang/String;
    :goto_2
    const-string v2, "name"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .end local v0           #name:Ljava/lang/String;
    if-eqz v0, :cond_1d

    .line 348
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 349
    .local v2, sharedPrefs:Landroid/content/SharedPreferences;
    const-string v0, "bool"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 351
    const-string v0, "enabledMMS"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 352
    const-string v0, "true"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_3
    sput v0, Lcom/android/mms/MmsConfig;->mMmsEnabled:I

    move-object v0, v4

    .end local v4           #text:Ljava/lang/String;
    .local v0, text:Ljava/lang/String;
    goto :goto_0

    .end local v0           #text:Ljava/lang/String;
    .restart local v4       #text:Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    .line 353
    :cond_3
    const-string v0, "enabledTransID"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 354
    const-string v0, "true"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/mms/MmsConfig;->mTransIdEnabled:Z

    move-object v0, v4

    .end local v4           #text:Ljava/lang/String;
    .restart local v0       #text:Ljava/lang/String;
    goto/16 :goto_0

    .line 355
    .end local v0           #text:Ljava/lang/String;
    .restart local v4       #text:Ljava/lang/String;
    :cond_4
    const-string v0, "enabledNotifyWapMMSC"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 356
    const-string v0, "true"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/mms/MmsConfig;->mNotifyWapMMSC:Z

    move-object v0, v4

    .end local v4           #text:Ljava/lang/String;
    .restart local v0       #text:Ljava/lang/String;
    goto/16 :goto_0

    .line 357
    .end local v0           #text:Ljava/lang/String;
    .restart local v4       #text:Ljava/lang/String;
    :cond_5
    const-string v0, "aliasEnabled"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 358
    const-string v0, "true"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/mms/MmsConfig;->mAliasEnabled:Z

    move-object v0, v4

    .end local v4           #text:Ljava/lang/String;
    .restart local v0       #text:Ljava/lang/String;
    goto/16 :goto_0

    .line 359
    .end local v0           #text:Ljava/lang/String;
    .restart local v4       #text:Ljava/lang/String;
    :cond_6
    const-string v0, "allowAttachAudio"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 360
    const-string v0, "true"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/mms/MmsConfig;->mAllowAttachAudio:Z

    move-object v0, v4

    .end local v4           #text:Ljava/lang/String;
    .restart local v0       #text:Ljava/lang/String;
    goto/16 :goto_0

    .line 362
    .end local v0           #text:Ljava/lang/String;
    .restart local v4       #text:Ljava/lang/String;
    :cond_7
    const-string v0, "int"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 364
    const-string v0, "maxMessageSize"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 365
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/mms/MmsConfig;->mMaxMessageSize:I

    move-object v0, v4

    .end local v4           #text:Ljava/lang/String;
    .restart local v0       #text:Ljava/lang/String;
    goto/16 :goto_0

    .line 366
    .end local v0           #text:Ljava/lang/String;
    .restart local v4       #text:Ljava/lang/String;
    :cond_8
    const-string v0, "mmsHeaderSize"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 367
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/mms/MmsConfig;->mMmsHeaderSize:I

    move-object v0, v4

    .end local v4           #text:Ljava/lang/String;
    .restart local v0       #text:Ljava/lang/String;
    goto/16 :goto_0

    .line 368
    .end local v0           #text:Ljava/lang/String;
    .restart local v4       #text:Ljava/lang/String;
    :cond_9
    const-string v0, "maxImageHeight"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 369
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/mms/MmsConfig;->mMaxImageHeight:I

    move-object v0, v4

    .end local v4           #text:Ljava/lang/String;
    .restart local v0       #text:Ljava/lang/String;
    goto/16 :goto_0

    .line 370
    .end local v0           #text:Ljava/lang/String;
    .restart local v4       #text:Ljava/lang/String;
    :cond_a
    const-string v0, "maxImageWidth"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 371
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/mms/MmsConfig;->mMaxImageWidth:I

    move-object v0, v4

    .end local v4           #text:Ljava/lang/String;
    .restart local v0       #text:Ljava/lang/String;
    goto/16 :goto_0

    .line 372
    .end local v0           #text:Ljava/lang/String;
    .restart local v4       #text:Ljava/lang/String;
    :cond_b
    const-string v0, "defaultSMSMessagesPerThread"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 373
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/mms/MmsConfig;->mDefaultSMSMessagesPerThread:I

    move-object v0, v4

    .end local v4           #text:Ljava/lang/String;
    .restart local v0       #text:Ljava/lang/String;
    goto/16 :goto_0

    .line 374
    .end local v0           #text:Ljava/lang/String;
    .restart local v4       #text:Ljava/lang/String;
    :cond_c
    const-string v0, "defaultMMSMessagesPerThread"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 375
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/mms/MmsConfig;->mDefaultMMSMessagesPerThread:I

    move-object v0, v4

    .end local v4           #text:Ljava/lang/String;
    .restart local v0       #text:Ljava/lang/String;
    goto/16 :goto_0

    .line 376
    .end local v0           #text:Ljava/lang/String;
    .restart local v4       #text:Ljava/lang/String;
    :cond_d
    const-string v0, "minMessageCountPerThread"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 377
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/mms/MmsConfig;->mMinMessageCountPerThread:I

    move-object v0, v4

    .end local v4           #text:Ljava/lang/String;
    .restart local v0       #text:Ljava/lang/String;
    goto/16 :goto_0

    .line 378
    .end local v0           #text:Ljava/lang/String;
    .restart local v4       #text:Ljava/lang/String;
    :cond_e
    const-string v0, "maxMessageCountPerThread"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 379
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/mms/MmsConfig;->mMaxMessageCountPerThread:I

    move-object v0, v4

    .end local v4           #text:Ljava/lang/String;
    .restart local v0       #text:Ljava/lang/String;
    goto/16 :goto_0

    .line 380
    .end local v0           #text:Ljava/lang/String;
    .restart local v4       #text:Ljava/lang/String;
    :cond_f
    const-string v0, "smsToMmsTextThreshold"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 381
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 382
    .local v0, defaultThreshold:I
    const-string v3, "csc_pref_key_threshold"

    .end local v3           #tag:Ljava/lang/String;
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .end local v0           #defaultThreshold:I
    sput v0, Lcom/android/mms/MmsConfig;->mSmsToMmsTextThreshold:I

    .line 383
    const-string v0, "Mms/MmsConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2           #sharedPrefs:Landroid/content/SharedPreferences;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[loadMmsSettings] mSmsToMmsTextThreshold= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/mms/MmsConfig;->mSmsToMmsTextThreshold:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    .line 384
    .end local v4           #text:Ljava/lang/String;
    .local v0, text:Ljava/lang/String;
    goto/16 :goto_0

    .end local v0           #text:Ljava/lang/String;
    .restart local v2       #sharedPrefs:Landroid/content/SharedPreferences;
    .restart local v3       #tag:Ljava/lang/String;
    .restart local v4       #text:Ljava/lang/String;
    :cond_10
    const-string v0, "recipientLimit"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 385
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 386
    .local v0, defaultMax:I
    const-string v3, "csc_pref_key_max_recipient"

    .end local v3           #tag:Ljava/lang/String;
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .end local v0           #defaultMax:I
    sput v0, Lcom/android/mms/MmsConfig;->mRecipientLimit:I

    .line 387
    sget v0, Lcom/android/mms/MmsConfig;->mRecipientLimit:I

    if-gez v0, :cond_11

    .line 388
    const v0, 0x7fffffff

    sput v0, Lcom/android/mms/MmsConfig;->mRecipientLimit:I

    .line 390
    :cond_11
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "MmsRecipientLimit"

    .end local v2           #sharedPrefs:Landroid/content/SharedPreferences;
    sget v3, Lcom/android/mms/MmsConfig;->mRecipientLimit:I

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 391
    const-string v0, "Mms/MmsConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[loadMmsSettings] mRecipientLimit= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/mms/MmsConfig;->mRecipientLimit:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    .line 392
    .end local v4           #text:Ljava/lang/String;
    .local v0, text:Ljava/lang/String;
    goto/16 :goto_0

    .end local v0           #text:Ljava/lang/String;
    .restart local v2       #sharedPrefs:Landroid/content/SharedPreferences;
    .restart local v3       #tag:Ljava/lang/String;
    .restart local v4       #text:Ljava/lang/String;
    :cond_12
    const-string v0, "httpSocketTimeout"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 393
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/mms/MmsConfig;->mHttpSocketTimeout:I

    move-object v0, v4

    .end local v4           #text:Ljava/lang/String;
    .restart local v0       #text:Ljava/lang/String;
    goto/16 :goto_0

    .line 394
    .end local v0           #text:Ljava/lang/String;
    .restart local v4       #text:Ljava/lang/String;
    :cond_13
    const-string v0, "minimumSlideElementDuration"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 395
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/mms/MmsConfig;->mMinimumSlideElementDuration:I

    move-object v0, v4

    .end local v4           #text:Ljava/lang/String;
    .restart local v0       #text:Ljava/lang/String;
    goto/16 :goto_0

    .line 396
    .end local v0           #text:Ljava/lang/String;
    .restart local v4       #text:Ljava/lang/String;
    :cond_14
    const-string v0, "maxSizeScaleForPendingMmsAllowed"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 397
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/mms/MmsConfig;->mMaxSizeScaleForPendingMmsAllowed:I

    move-object v0, v4

    .end local v4           #text:Ljava/lang/String;
    .restart local v0       #text:Ljava/lang/String;
    goto/16 :goto_0

    .line 398
    .end local v0           #text:Ljava/lang/String;
    .restart local v4       #text:Ljava/lang/String;
    :cond_15
    const-string v0, "aliasMinChars"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 399
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/mms/MmsConfig;->mAliasRuleMinChars:I

    move-object v0, v4

    .end local v4           #text:Ljava/lang/String;
    .restart local v0       #text:Ljava/lang/String;
    goto/16 :goto_0

    .line 400
    .end local v0           #text:Ljava/lang/String;
    .restart local v4       #text:Ljava/lang/String;
    :cond_16
    const-string v0, "aliasMaxChars"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 401
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/mms/MmsConfig;->mAliasRuleMaxChars:I

    move-object v0, v4

    .end local v4           #text:Ljava/lang/String;
    .restart local v0       #text:Ljava/lang/String;
    goto/16 :goto_0

    .line 403
    .end local v0           #text:Ljava/lang/String;
    .restart local v4       #text:Ljava/lang/String;
    :cond_17
    const-string v0, "string"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 405
    const-string v0, "userAgent"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 406
    sput-object v4, Lcom/android/mms/MmsConfig;->mUserAgent:Ljava/lang/String;

    .line 407
    sget-object v0, Lcom/android/mms/MmsConfig;->mUserAgent:Ljava/lang/String;

    sput-object v0, Lcom/android/mms/MmsConfig;->mUserAgentDebug:Ljava/lang/String;

    move-object v0, v4

    .end local v4           #text:Ljava/lang/String;
    .restart local v0       #text:Ljava/lang/String;
    goto/16 :goto_0

    .line 408
    .end local v0           #text:Ljava/lang/String;
    .restart local v4       #text:Ljava/lang/String;
    :cond_18
    const-string v0, "uaProfTagName"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 409
    sput-object v4, Lcom/android/mms/MmsConfig;->mUaProfTagName:Ljava/lang/String;

    move-object v0, v4

    .end local v4           #text:Ljava/lang/String;
    .restart local v0       #text:Ljava/lang/String;
    goto/16 :goto_0

    .line 410
    .end local v0           #text:Ljava/lang/String;
    .restart local v4       #text:Ljava/lang/String;
    :cond_19
    const-string v0, "uaProfUrl"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 411
    sput-object v4, Lcom/android/mms/MmsConfig;->mUaProfUrl:Ljava/lang/String;

    .line 412
    sget-object v0, Lcom/android/mms/MmsConfig;->mUaProfUrl:Ljava/lang/String;

    sput-object v0, Lcom/android/mms/MmsConfig;->mUaProfUrlDebug:Ljava/lang/String;

    move-object v0, v4

    .end local v4           #text:Ljava/lang/String;
    .restart local v0       #text:Ljava/lang/String;
    goto/16 :goto_0

    .line 413
    .end local v0           #text:Ljava/lang/String;
    .restart local v4       #text:Ljava/lang/String;
    :cond_1a
    const-string v0, "httpParams"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 416
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "mms_subscriber_id"

    .end local v2           #sharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 417
    .local v0, subscriberID:Ljava/lang/String;
    const-string v2, "Mms/MmsConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #tag:Ljava/lang/String;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "subscriberID : "

    .end local v5           #value:Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const-string v2, "Not Used"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 419
    move-object v0, v0

    .line 422
    .end local v4           #text:Ljava/lang/String;
    .local v0, text:Ljava/lang/String;
    :goto_4
    sput-object v0, Lcom/android/mms/MmsConfig;->mHttpParams:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 431
    .end local v0           #text:Ljava/lang/String;
    :catch_0
    move-exception p0

    .line 432
    .local p0, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    const-string v0, "Mms/MmsConfig"

    const-string v2, "loadMmsSettings caught "

    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 438
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_1

    .line 423
    .restart local v2       #sharedPrefs:Landroid/content/SharedPreferences;
    .restart local v3       #tag:Ljava/lang/String;
    .restart local v4       #text:Ljava/lang/String;
    .restart local v5       #value:Ljava/lang/String;
    .local p0, context:Landroid/content/Context;
    :cond_1b
    :try_start_3
    const-string v0, "httpParamsLine1Key"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 424
    sput-object v4, Lcom/android/mms/MmsConfig;->mHttpParamsLine1Key:Ljava/lang/String;

    move-object v0, v4

    .end local v4           #text:Ljava/lang/String;
    .restart local v0       #text:Ljava/lang/String;
    goto/16 :goto_0

    .line 425
    .end local v0           #text:Ljava/lang/String;
    .restart local v4       #text:Ljava/lang/String;
    :cond_1c
    const-string v0, "emailGatewayNumber"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 426
    sput-object v4, Lcom/android/mms/MmsConfig;->mEmailGateway:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .end local v2           #sharedPrefs:Landroid/content/SharedPreferences;
    :cond_1d
    move-object v0, v4

    .end local v4           #text:Ljava/lang/String;
    .restart local v0       #text:Ljava/lang/String;
    goto/16 :goto_0

    .line 433
    .end local v0           #text:Ljava/lang/String;
    .end local v3           #tag:Ljava/lang/String;
    .end local v5           #value:Ljava/lang/String;
    :catch_1
    move-exception p0

    .line 434
    .local p0, e:Ljava/lang/NumberFormatException;
    :try_start_4
    const-string v0, "Mms/MmsConfig"

    const-string v2, "loadMmsSettings caught "

    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 438
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_1

    .line 435
    .local p0, context:Landroid/content/Context;
    :catch_2
    move-exception p0

    .line 436
    .local p0, e:Ljava/io/IOException;
    :try_start_5
    const-string v0, "Mms/MmsConfig"

    const-string v2, "loadMmsSettings caught "

    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 438
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_1

    .end local p0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception p0

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    throw p0

    .line 454
    .local p0, errorStr:Ljava/lang/String;
    :cond_1e
    return-void

    .local v0, subscriberID:Ljava/lang/String;
    .restart local v4       #text:Ljava/lang/String;
    .local p0, context:Landroid/content/Context;
    :cond_1f
    move-object v0, v4

    .end local v4           #text:Ljava/lang/String;
    .local v0, text:Ljava/lang/String;
    goto :goto_4

    .local v0, name:Ljava/lang/String;
    .local v2, text:Ljava/lang/String;
    .restart local v3       #tag:Ljava/lang/String;
    .restart local v5       #value:Ljava/lang/String;
    :cond_20
    move-object v4, v2

    .end local v2           #text:Ljava/lang/String;
    .restart local v4       #text:Ljava/lang/String;
    goto/16 :goto_2
.end method

.method public static final nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 319
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, type:I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 322
    :cond_1
    return-void
.end method

.method public static setOptionalFieldAttendance(Z)V
    .locals 0
    .parameter "set"

    .prologue
    .line 283
    sput-boolean p0, Lcom/android/mms/MmsConfig;->mOptionalFieldAttendance:Z

    .line 284
    return-void
.end method

.method public static setSmsMmsMaxRecipient(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 293
    const-string v0, "Mms/MmsConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setSmsMmsMaxRecipient] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    sput p0, Lcom/android/mms/MmsConfig;->mRecipientLimit:I

    .line 295
    return-void
.end method

.method public static setSmsMmsThreshold(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 288
    const-string v0, "Mms/MmsConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setSmsMmsThreshold] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    sput p0, Lcom/android/mms/MmsConfig;->mSmsToMmsTextThreshold:I

    .line 290
    return-void
.end method

.method public static setTransactionLoggable(Z)V
    .locals 0
    .parameter "set"

    .prologue
    .line 249
    sput-boolean p0, Lcom/android/mms/MmsConfig;->mTransactionLoggable:Z

    .line 250
    return-void
.end method

.method public static setUaOrigin()V
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/MmsConfig;->mUaDebugSet:Z

    .line 269
    sget-object v0, Lcom/android/mms/MmsConfig;->mUserAgent:Ljava/lang/String;

    sput-object v0, Lcom/android/mms/MmsConfig;->mUserAgentDebug:Ljava/lang/String;

    .line 270
    sget-object v0, Lcom/android/mms/MmsConfig;->mUaProfUrl:Ljava/lang/String;

    sput-object v0, Lcom/android/mms/MmsConfig;->mUaProfUrlDebug:Ljava/lang/String;

    .line 271
    return-void
.end method

.method public static setUaProfUrl(Ljava/lang/String;)V
    .locals 1
    .parameter "set"

    .prologue
    .line 263
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/MmsConfig;->mUaDebugSet:Z

    .line 264
    sput-object p0, Lcom/android/mms/MmsConfig;->mUaProfUrlDebug:Ljava/lang/String;

    .line 265
    return-void
.end method

.method public static setUserAgent(Ljava/lang/String;)V
    .locals 1
    .parameter "set"

    .prologue
    .line 258
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/MmsConfig;->mUaDebugSet:Z

    .line 259
    sput-object p0, Lcom/android/mms/MmsConfig;->mUserAgentDebug:Ljava/lang/String;

    .line 260
    return-void
.end method
