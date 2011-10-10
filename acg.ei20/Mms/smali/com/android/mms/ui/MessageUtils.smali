.class public Lcom/android/mms/ui/MessageUtils;
.super Ljava/lang/Object;
.source "MessageUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;
    }
.end annotation


# static fields
.field private static final NUMERIC_CHARS_SUGAR:[C

.field public static mCMASType:Ljava/lang/String;

.field private static mClockFormat:Ljava/text/SimpleDateFormat;

.field private static mClockFormatString:Ljava/lang/String;

.field public static mIsCMAS:Z

.field private static mMovie:Landroid/graphics/Movie;

.field private static numericSugarMap:Ljava/util/HashMap;

.field private static sLocalNumber:Ljava/lang/String;

.field private static final sRecipientAddress:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 128
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/mms/ui/MessageUtils;->mIsCMAS:Z

    .line 129
    sput-object v4, Lcom/android/mms/ui/MessageUtils;->mCMASType:Ljava/lang/String;

    .line 150
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v1, Lcom/android/mms/ui/MessageUtils;->sRecipientAddress:Ljava/util/Map;

    .line 158
    const/16 v1, 0xb

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/mms/ui/MessageUtils;->NUMERIC_CHARS_SUGAR:[C

    .line 162
    new-instance v1, Ljava/util/HashMap;

    sget-object v2, Lcom/android/mms/ui/MessageUtils;->NUMERIC_CHARS_SUGAR:[C

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v1, Lcom/android/mms/ui/MessageUtils;->numericSugarMap:Ljava/util/HashMap;

    .line 165
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->NUMERIC_CHARS_SUGAR:[C

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 166
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->numericSugarMap:Ljava/util/HashMap;

    sget-object v2, Lcom/android/mms/ui/MessageUtils;->NUMERIC_CHARS_SUGAR:[C

    aget-char v2, v2, v0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    sget-object v3, Lcom/android/mms/ui/MessageUtils;->NUMERIC_CHARS_SUGAR:[C

    aget-char v3, v3, v0

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 995
    :cond_0
    sput-object v4, Lcom/android/mms/ui/MessageUtils;->mClockFormat:Ljava/text/SimpleDateFormat;

    .line 996
    sput-object v4, Lcom/android/mms/ui/MessageUtils;->mClockFormatString:Ljava/lang/String;

    return-void

    .line 158
    nop

    :array_0
    .array-data 0x2
        0x2dt 0x0t
        0x2et 0x0t
        0x2ct 0x0t
        0x28t 0x0t
        0x29t 0x0t
        0x20t 0x0t
        0x2ft 0x0t
        0x5ct 0x0t
        0x2at 0x0t
        0x23t 0x0t
        0x2bt 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    return-void
.end method

.method public static canAddToContacts(Lcom/android/mms/data/Contact;)Z
    .locals 4
    .parameter "contact"

    .prologue
    const/4 v3, 0x0

    .line 1851
    invoke-virtual {p0}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1852
    .local v1, name:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1853
    invoke-virtual {p0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1854
    .local v0, c:C
    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isSpecialChar(C)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 1868
    .end local v0           #c:C
    :goto_0
    return v2

    .line 1858
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1859
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1860
    .restart local v0       #c:C
    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isSpecialChar(C)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    .line 1861
    goto :goto_0

    .line 1865
    .end local v0           #c:C
    :cond_1
    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->isValidMmsAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v3

    .line 1866
    goto :goto_0

    .line 1868
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static confirmReadReportDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1604
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1605
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1606
    const v1, 0x7f09010a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1607
    const v1, 0x7f09010b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1608
    const v1, 0x7f090080

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1609
    const v1, 0x7f090081

    invoke-virtual {v0, v1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1610
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1611
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1612
    return-void
.end method

.method private static extractEncStr(Landroid/content/Context;Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "value"

    .prologue
    .line 1629
    if-eqz p1, :cond_0

    .line 1630
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v0

    .line 1632
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static extractEncStrFromCursor(Landroid/database/Cursor;II)Ljava/lang/String;
    .locals 4
    .parameter "cursor"
    .parameter "columnRawBytes"
    .parameter "columnCharset"

    .prologue
    .line 1616
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1617
    .local v1, rawBytes:Ljava/lang/String;
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1619
    .local v0, charset:I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1620
    const-string v2, ""

    .line 1624
    :goto_0
    return-object v2

    .line 1621
    :cond_0
    if-nez v0, :cond_1

    move-object v2, v1

    .line 1622
    goto :goto_0

    .line 1624
    :cond_1
    new-instance v2, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-static {v1}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static extractIdsToAddresses(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/StringBuilder;
    .locals 13
    .parameter "context"
    .parameter "recipients"
    .parameter "allowQuery"

    .prologue
    .line 1107
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1108
    .local v7, addressBuf:Ljava/lang/StringBuilder;
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1109
    .local p1, recipientIds:[Ljava/lang/String;
    const/4 v0, 0x1

    .line 1110
    .local v0, firstItem:Z
    move-object p1, p1

    .local p1, arr$:[Ljava/lang/String;
    array-length v10, p1

    .local v10, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    move v9, v1

    .end local v1           #i$:I
    .local v9, i$:I
    move v8, v0

    .end local v0           #firstItem:Z
    .local v8, firstItem:Z
    :goto_0
    if-ge v9, v10, :cond_3

    aget-object v11, p1, v9

    .line 1111
    .local v11, recipientId:Ljava/lang/String;
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->sRecipientAddress:Ljava/util/Map;

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1113
    .local v12, value:Ljava/lang/String;
    if-nez v12, :cond_6

    .line 1114
    if-nez p2, :cond_0

    .line 1118
    const/4 p0, 0x0

    .line 1146
    .end local v11           #recipientId:Ljava/lang/String;
    .end local v12           #value:Ljava/lang/String;
    .end local p0
    :goto_1
    return-object p0

    .line 1120
    .restart local v11       #recipientId:Ljava/lang/String;
    .restart local v12       #value:Ljava/lang/String;
    .restart local p0
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1121
    .local v0, s:Ljava/lang/StringBuffer;
    const-string v1, "content://mms-sms/canonical-address/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .end local v0           #s:Ljava/lang/StringBuffer;
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1122
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1124
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_6

    .line 1126
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1127
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1128
    .end local v12           #value:Ljava/lang/String;
    .local v1, value:Ljava/lang/String;
    :try_start_1
    sget-object v2, Lcom/android/mms/ui/MessageUtils;->sRecipientAddress:Ljava/util/Map;

    .end local v2           #uri:Landroid/net/Uri;
    invoke-interface {v2, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1131
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1135
    .end local v0           #c:Landroid/database/Cursor;
    :goto_3
    if-nez v1, :cond_1

    move v0, v8

    .line 1110
    .end local v8           #firstItem:Z
    .local v0, firstItem:Z
    :goto_4
    add-int/lit8 v1, v9, 0x1

    .end local v9           #i$:I
    .local v1, i$:I
    move v9, v1

    .end local v1           #i$:I
    .restart local v9       #i$:I
    move v8, v0

    .end local v0           #firstItem:Z
    .restart local v8       #firstItem:Z
    goto :goto_0

    .line 1131
    .local v0, c:Landroid/database/Cursor;
    .restart local v2       #uri:Landroid/net/Uri;
    .restart local v12       #value:Ljava/lang/String;
    :catchall_0
    move-exception p0

    move-object p1, p0

    move-object p0, v12

    .end local v2           #uri:Landroid/net/Uri;
    .end local v12           #value:Ljava/lang/String;
    .end local p1           #arr$:[Ljava/lang/String;
    .local p0, value:Ljava/lang/String;
    :goto_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw p1

    .line 1138
    .end local v0           #c:Landroid/database/Cursor;
    .local v1, value:Ljava/lang/String;
    .local p0, context:Landroid/content/Context;
    .restart local p1       #arr$:[Ljava/lang/String;
    :cond_1
    if-eqz v8, :cond_2

    .line 1139
    const/4 v0, 0x0

    .line 1143
    .end local v8           #firstItem:Z
    .local v0, firstItem:Z
    :goto_6
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1141
    .end local v0           #firstItem:Z
    .restart local v8       #firstItem:Z
    :cond_2
    const-string v0, ";"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v8

    .end local v8           #firstItem:Z
    .restart local v0       #firstItem:Z
    goto :goto_6

    .line 1146
    .end local v0           #firstItem:Z
    .end local v1           #value:Ljava/lang/String;
    .end local v11           #recipientId:Ljava/lang/String;
    .restart local v8       #firstItem:Z
    :cond_3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    .end local p0           #context:Landroid/content/Context;
    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_1

    :cond_4
    move-object p0, v7

    goto :goto_1

    .line 1131
    .local v0, c:Landroid/database/Cursor;
    .restart local v1       #value:Ljava/lang/String;
    .restart local v11       #recipientId:Ljava/lang/String;
    .restart local p0       #context:Landroid/content/Context;
    :catchall_1
    move-exception p0

    move-object p1, p0

    move-object p0, v1

    .end local v1           #value:Ljava/lang/String;
    .local p0, value:Ljava/lang/String;
    goto :goto_5

    .restart local v2       #uri:Landroid/net/Uri;
    .restart local v12       #value:Ljava/lang/String;
    .local p0, context:Landroid/content/Context;
    :cond_5
    move-object v1, v12

    .end local v12           #value:Ljava/lang/String;
    .restart local v1       #value:Ljava/lang/String;
    goto :goto_2

    .end local v0           #c:Landroid/database/Cursor;
    .end local v1           #value:Ljava/lang/String;
    .end local v2           #uri:Landroid/net/Uri;
    .restart local v12       #value:Ljava/lang/String;
    :cond_6
    move-object v1, v12

    .end local v12           #value:Ljava/lang/String;
    .restart local v1       #value:Ljava/lang/String;
    goto :goto_3
.end method

.method public static extractNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 2040
    const-string v0, ""

    .line 2043
    if-nez p0, :cond_1

    .line 2058
    :cond_0
    :goto_0
    return-object v0

    .line 2044
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 2046
    const-string v1, "<"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 2047
    const-string v2, ">"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 2049
    if-gez v1, :cond_3

    const/4 v1, 0x0

    .line 2050
    :goto_1
    if-gez v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 2052
    :cond_2
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 2049
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2054
    :catch_0
    move-exception v1

    .line 2055
    const-string v2, "MessageUtils"

    const-string v3, "Illegal name and number format!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2056
    invoke-virtual {v1}, Ljava/lang/StringIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_0
.end method

.method public static extractUris([Landroid/text/style/URLSpan;)Ljava/util/ArrayList;
    .locals 4
    .parameter "spans"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/text/style/URLSpan;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1637
    array-length v2, p0

    .line 1638
    .local v2, size:I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1640
    .local v0, accumulator:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1641
    aget-object v3, p0, v1

    invoke-virtual {v3}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1640
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1643
    :cond_0
    return-object v0
.end method

.method private static formatDateTime2(Landroid/content/Context;JI)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "when"
    .parameter "formatFlags"

    .prologue
    .line 920
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 921
    .local v0, result:Ljava/lang/StringBuffer;
    and-int/lit8 v1, p3, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    move v2, v1

    .line 922
    .local v2, showTime:Z
    :goto_0
    and-int/lit8 v1, p3, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    move v3, v1

    .line 923
    .local v3, showYear:Z
    :goto_1
    and-int/lit8 p3, p3, 0x10

    const/16 v1, 0x10

    if-ne p3, v1, :cond_3

    .end local p3
    const/4 p3, 0x1

    move v1, p3

    .line 924
    .local v1, showDate:Z
    :goto_2
    const p3, 0x80b00

    .line 929
    .local p3, baseFormatFlags:I
    if-eqz v2, :cond_0

    .line 930
    invoke-static {p0, p1, p2}, Lcom/android/mms/ui/MessageUtils;->getSmallTime(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object p3

    .end local p3           #baseFormatFlags:I
    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 939
    :cond_0
    if-nez v3, :cond_4

    if-nez v1, :cond_4

    .line 940
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 992
    .end local v2           #showTime:Z
    .end local p0
    .end local p1
    :goto_3
    return-object p0

    .line 921
    .end local v1           #showDate:Z
    .end local v3           #showYear:Z
    .restart local p0
    .restart local p1
    .local p3, formatFlags:I
    :cond_1
    const/4 v1, 0x0

    move v2, v1

    goto :goto_0

    .line 922
    .restart local v2       #showTime:Z
    :cond_2
    const/4 v1, 0x0

    move v3, v1

    goto :goto_1

    .line 923
    .end local p3           #formatFlags:I
    .restart local v3       #showYear:Z
    :cond_3
    const/4 p3, 0x0

    move v1, p3

    goto :goto_2

    .line 944
    .restart local v1       #showDate:Z
    :cond_4
    const/4 p3, 0x1

    if-ne p3, v2, :cond_5

    .line 945
    const-string p3, ", "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 948
    :cond_5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p3

    .line 949
    .local p3, cNow:Ljava/util/Calendar;
    invoke-virtual {p3, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 951
    const-string v2, ""

    .line 952
    .local v2, strY:Ljava/lang/String;
    const-string p2, ""

    .line 953
    .end local p1
    .local p2, strM:Ljava/lang/String;
    const-string p1, ""

    .line 955
    .local p1, strD:Ljava/lang/String;
    if-eqz v3, :cond_9

    .line 956
    const/4 v2, 0x1

    invoke-virtual {p3, v2}, Ljava/util/Calendar;->get(I)I

    .end local v2           #strY:Ljava/lang/String;
    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #strY:Ljava/lang/String;
    move-object v4, v2

    .line 958
    .end local v2           #strY:Ljava/lang/String;
    .local v4, strY:Ljava/lang/String;
    :goto_4
    if-eqz v1, :cond_8

    .line 959
    const/4 p1, 0x2

    invoke-virtual {p3, p1}, Ljava/util/Calendar;->get(I)I

    .end local p1           #strD:Ljava/lang/String;
    move-result p1

    const/high16 p2, 0x1

    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    .end local p2           #strM:Ljava/lang/String;
    move-result-object p2

    .line 960
    .restart local p2       #strM:Ljava/lang/String;
    const/4 p1, 0x5

    invoke-virtual {p3, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .restart local p1       #strD:Ljava/lang/String;
    move-object p3, p1

    .end local p1           #strD:Ljava/lang/String;
    .local p3, strD:Ljava/lang/String;
    move-object v2, p2

    .line 963
    .end local p2           #strM:Ljava/lang/String;
    .local v2, strM:Ljava/lang/String;
    :goto_5
    const-string p1, ""

    .line 964
    .local p1, delimeter:Ljava/lang/String;
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object p2

    .line 966
    .local p2, order:[C
    const/4 p0, 0x0

    .local p0, i:I
    move v6, p0

    .end local p0           #i:I
    .local v6, i:I
    move-object p0, p1

    .end local p1           #delimeter:Ljava/lang/String;
    .local p0, delimeter:Ljava/lang/String;
    move p1, v6

    .end local v6           #i:I
    .local p1, i:I
    :goto_6
    array-length v5, p2

    if-ge p1, v5, :cond_7

    .line 967
    aget-char v5, p2, p1

    sparse-switch v5, :sswitch_data_0

    .line 966
    :cond_6
    :goto_7
    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    .line 969
    :sswitch_0
    if-eqz v3, :cond_6

    .line 970
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 971
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 972
    const-string p0, " "

    goto :goto_7

    .line 976
    :sswitch_1
    if-eqz v1, :cond_6

    .line 977
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 978
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 979
    const-string p0, " "

    goto :goto_7

    .line 983
    :sswitch_2
    if-eqz v1, :cond_6

    .line 984
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 985
    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 986
    const-string p0, " "

    goto :goto_7

    .line 992
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    .end local v2           #strM:Ljava/lang/String;
    .local p0, context:Landroid/content/Context;
    .local p1, strD:Ljava/lang/String;
    .local p2, strM:Ljava/lang/String;
    .local p3, cNow:Ljava/util/Calendar;
    :cond_8
    move-object p3, p1

    .end local p1           #strD:Ljava/lang/String;
    .local p3, strD:Ljava/lang/String;
    move-object v2, p2

    .end local p2           #strM:Ljava/lang/String;
    .restart local v2       #strM:Ljava/lang/String;
    goto :goto_5

    .end local v4           #strY:Ljava/lang/String;
    .local v2, strY:Ljava/lang/String;
    .restart local p1       #strD:Ljava/lang/String;
    .restart local p2       #strM:Ljava/lang/String;
    .local p3, cNow:Ljava/util/Calendar;
    :cond_9
    move-object v4, v2

    .end local v2           #strY:Ljava/lang/String;
    .restart local v4       #strY:Ljava/lang/String;
    goto :goto_4

    .line 967
    :sswitch_data_0
    .sparse-switch
        0x4d -> :sswitch_1
        0x64 -> :sswitch_2
        0x79 -> :sswitch_0
    .end sparse-switch
.end method

.method public static formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "when"

    .prologue
    .line 880
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "when"
    .parameter "fullFormat"

    .prologue
    .line 884
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 885
    .local v3, then:Landroid/text/format/Time;
    invoke-virtual {v3, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 886
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 887
    .local v2, now:Landroid/text/format/Time;
    invoke-virtual {v2}, Landroid/text/format/Time;->setToNow()V

    .line 888
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 891
    .local v0, dNow:Ljava/util/Date;
    const v1, 0x80b00

    .line 896
    .local v1, format_flags:I
    iget v4, v3, Landroid/text/format/Time;->year:I

    iget v5, v2, Landroid/text/format/Time;->year:I

    if-eq v4, v5, :cond_1

    .line 897
    or-int/lit8 v1, v1, 0x14

    .line 909
    :goto_0
    if-eqz p3, :cond_0

    .line 910
    or-int/lit8 v1, v1, 0x11

    .line 913
    :cond_0
    invoke-static {p0, p1, p2, v1}, Lcom/android/mms/ui/MessageUtils;->formatDateTime2(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 898
    :cond_1
    iget v4, v3, Landroid/text/format/Time;->yearDay:I

    iget v5, v2, Landroid/text/format/Time;->yearDay:I

    if-eq v4, v5, :cond_2

    .line 900
    or-int/lit8 v1, v1, 0x10

    goto :goto_0

    .line 903
    :cond_2
    or-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getAddressByThreadId(Landroid/content/Context;J)Ljava/lang/String;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 2194
    new-array v3, v7, [Ljava/lang/String;

    const-string v0, "recipient_ids"

    aput-object v0, v3, v1

    .line 2196
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2197
    const-string v1, "simple"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2198
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2202
    if-eqz v0, :cond_1

    .line 2204
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v7, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2205
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->getRecipientsByIds(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 2207
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 2212
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    .line 2215
    :goto_0
    return-object v0

    .line 2212
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v5

    .line 2215
    goto :goto_0

    .line 2212
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public static getAttachmentType(Lcom/android/mms/model/SlideshowModel;)I
    .locals 6
    .parameter "model"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 845
    if-nez p0, :cond_0

    move v2, v3

    .line 876
    :goto_0
    return v2

    .line 849
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    .line 850
    .local v0, numberOfSlides:I
    if-le v0, v4, :cond_1

    move v2, v5

    .line 851
    goto :goto_0

    .line 852
    :cond_1
    if-ne v0, v4, :cond_6

    .line 854
    invoke-virtual {p0, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    .line 855
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 856
    const/4 v2, 0x2

    goto :goto_0

    .line 859
    :cond_2
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v5

    .line 860
    goto :goto_0

    .line 863
    :cond_3
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 864
    const/4 v2, 0x3

    goto :goto_0

    .line 867
    :cond_4
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v4

    .line 868
    goto :goto_0

    .line 871
    :cond_5
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v3

    .line 872
    goto :goto_0

    .end local v1           #slide:Lcom/android/mms/model/SlideModel;
    :cond_6
    move v2, v3

    .line 876
    goto :goto_0
.end method

.method public static getAvailableStorage()J
    .locals 7

    .prologue
    .line 2310
    const-string v0, "/data"

    .line 2311
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 2312
    const-string v0, "MessageUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Available Storage Size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v5, v5

    mul-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2315
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method private static getCertainityTextID(I)I
    .locals 1
    .parameter "msgCertainity"

    .prologue
    .line 749
    const v0, 0x7f090207

    .line 752
    .local v0, id:I
    packed-switch p0, :pswitch_data_0

    .line 763
    :goto_0
    return v0

    .line 756
    :pswitch_0
    const v0, 0x7f090205

    .line 757
    goto :goto_0

    .line 760
    :pswitch_1
    const v0, 0x7f090206

    goto :goto_0

    .line 752
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getCmaeCategoryTextID(I)I
    .locals 1
    .parameter "msgCategory"

    .prologue
    .line 767
    const v0, 0x7f090207

    .line 769
    .local v0, id:I
    packed-switch p0, :pswitch_data_0

    .line 828
    :goto_0
    return v0

    .line 772
    :pswitch_0
    const v0, 0x7f0901ed

    .line 773
    goto :goto_0

    .line 776
    :pswitch_1
    const v0, 0x7f0901ee

    .line 777
    goto :goto_0

    .line 781
    :pswitch_2
    const v0, 0x7f0901ef

    .line 782
    goto :goto_0

    .line 787
    :pswitch_3
    const v0, 0x7f0901f0

    .line 788
    goto :goto_0

    .line 791
    :pswitch_4
    const v0, 0x7f0901f1

    .line 792
    goto :goto_0

    .line 795
    :pswitch_5
    const v0, 0x7f0901f2

    .line 796
    goto :goto_0

    .line 799
    :pswitch_6
    const v0, 0x7f0901f3

    .line 800
    goto :goto_0

    .line 803
    :pswitch_7
    const v0, 0x7f0901f4

    .line 804
    goto :goto_0

    .line 808
    :pswitch_8
    const v0, 0x7f0901f5

    .line 809
    goto :goto_0

    .line 813
    :pswitch_9
    const v0, 0x7f0901f6

    .line 814
    goto :goto_0

    .line 820
    :pswitch_a
    const v0, 0x7f0901f7

    .line 821
    goto :goto_0

    .line 824
    :pswitch_b
    const v0, 0x7f0901f8

    goto :goto_0

    .line 769
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private static getErrorStringID(I)I
    .locals 1
    .parameter "errorId"

    .prologue
    const v0, 0x7f0901cf

    .line 314
    sparse-switch p0, :sswitch_data_0

    .line 355
    :goto_0
    :sswitch_0
    return v0

    .line 321
    :sswitch_1
    const v0, 0x7f0901ce

    goto :goto_0

    .line 325
    :sswitch_2
    const v0, 0x7f0901d0

    goto :goto_0

    .line 330
    :sswitch_3
    const v0, 0x7f0901d1

    goto :goto_0

    .line 334
    :sswitch_4
    const v0, 0x7f0901d2

    goto :goto_0

    .line 338
    :sswitch_5
    const v0, 0x7f0901d3

    goto :goto_0

    .line 341
    :sswitch_6
    const v0, 0x7f0901d4

    goto :goto_0

    .line 345
    :sswitch_7
    const v0, 0x7f0901d5

    goto :goto_0

    .line 314
    nop

    :sswitch_data_0
    .sparse-switch
        0x81 -> :sswitch_0
        0x82 -> :sswitch_1
        0x83 -> :sswitch_2
        0x84 -> :sswitch_3
        0x85 -> :sswitch_4
        0x86 -> :sswitch_5
        0x87 -> :sswitch_6
        0x88 -> :sswitch_7
        0xc1 -> :sswitch_3
        0xc3 -> :sswitch_5
        0xe1 -> :sswitch_1
        0xe2 -> :sswitch_2
        0xe3 -> :sswitch_3
        0xe4 -> :sswitch_4
        0xe5 -> :sswitch_7
    .end sparse-switch
.end method

.method public static getLocalNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1437
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->sLocalNumber:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1438
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/MmsApp;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->sLocalNumber:Ljava/lang/String;

    .line 1441
    :cond_0
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->sLocalNumber:Ljava/lang/String;

    return-object v0
.end method

.method public static getMessageDetails(Landroid/content/Context;Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "cursor"
    .parameter "size"

    .prologue
    const/4 v3, 0x0

    .line 200
    if-nez p1, :cond_0

    .line 201
    const/4 v1, 0x0

    .line 217
    :goto_0
    return-object v1

    .line 204
    :cond_0
    const-string v1, "mms"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 205
    const/16 v1, 0x10

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 206
    .local v0, type:I
    packed-switch v0, :pswitch_data_0

    .line 213
    :pswitch_0
    const-string v1, "MessageUtils"

    const-string v2, "No details could be retrieved."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const-string v1, ""

    goto :goto_0

    .line 208
    :pswitch_1
    invoke-static {p0, p1, v3}, Lcom/android/mms/ui/MessageUtils;->getNotificationIndDetails(Landroid/content/Context;Landroid/database/Cursor;Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 211
    :pswitch_2
    invoke-static {p0, p1, p2, v3}, Lcom/android/mms/ui/MessageUtils;->getMultimediaMessageDetails(Landroid/content/Context;Landroid/database/Cursor;IZ)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 217
    .end local v0           #type:I
    :cond_1
    invoke-static {p0, p1, v3}, Lcom/android/mms/ui/MessageUtils;->getTextMessageDetails(Landroid/content/Context;Landroid/database/Cursor;Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 206
    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getMessageDetailsforViewer(Landroid/content/Context;Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "size"
    .parameter "messageType"

    .prologue
    const/4 v2, 0x1

    .line 178
    if-nez p1, :cond_0

    .line 179
    const/4 v1, 0x0

    .line 195
    :goto_0
    return-object v1

    .line 181
    :cond_0
    const-string v1, "mms"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 182
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 183
    .local v0, type:I
    packed-switch v0, :pswitch_data_0

    .line 190
    :pswitch_0
    const-string v1, "MessageUtils"

    const-string v2, "No details could be retrieved."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const-string v1, ""

    goto :goto_0

    .line 185
    :pswitch_1
    invoke-static {p0, p1, v2}, Lcom/android/mms/ui/MessageUtils;->getNotificationIndDetails(Landroid/content/Context;Landroid/database/Cursor;Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 188
    :pswitch_2
    invoke-static {p0, p1, p2, v2}, Lcom/android/mms/ui/MessageUtils;->getMultimediaMessageDetails(Landroid/content/Context;Landroid/database/Cursor;IZ)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 195
    .end local v0           #type:I
    :cond_1
    invoke-static {p0, p1, v2}, Lcom/android/mms/ui/MessageUtils;->getTextMessageDetails(Landroid/content/Context;Landroid/database/Cursor;Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 183
    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static getMultimediaMessageDetails(Landroid/content/Context;Landroid/database/Cursor;IZ)Ljava/lang/String;
    .locals 16
    .parameter "context"
    .parameter "cursor"
    .parameter "size"
    .parameter "isView"

    .prologue
    .line 361
    const/4 v4, 0x0

    .line 362
    .local v4, type:I
    if-eqz p3, :cond_0

    .line 363
    const/4 v4, 0x1

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    .end local v4           #type:I
    move-result v4

    .restart local v4       #type:I
    move v11, v4

    .line 367
    .end local v4           #type:I
    .local v11, type:I
    :goto_0
    const/16 v4, 0x82

    if-ne v11, v4, :cond_1

    .line 368
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->getNotificationIndDetails(Landroid/content/Context;Landroid/database/Cursor;Z)Ljava/lang/String;

    move-result-object p0

    .line 496
    .end local p0
    .end local p1
    .end local p3
    :goto_1
    return-object p0

    .line 365
    .end local v11           #type:I
    .restart local v4       #type:I
    .restart local p0
    .restart local p1
    .restart local p3
    :cond_0
    const/16 v4, 0x10

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    .end local v4           #type:I
    move-result v4

    .restart local v4       #type:I
    move v11, v4

    .end local v4           #type:I
    .restart local v11       #type:I
    goto :goto_0

    .line 371
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 372
    .local v4, details:Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 373
    .local v10, res:Landroid/content/res/Resources;
    const-wide/16 v5, 0x0

    .line 374
    .local v5, id:J
    if-eqz p3, :cond_6

    .line 375
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    .end local v5           #id:J
    move-result-wide v5

    .restart local v5       #id:J
    move-wide v6, v5

    .line 379
    .end local v5           #id:J
    .local v6, id:J
    :goto_2
    sget-object v5, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 383
    .local v9, uri:Landroid/net/Uri;
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v8

    check-cast v8, Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    .local v8, msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    const v5, 0x7f0900c1

    invoke-virtual {v10, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    const v5, 0x7f0900c3

    invoke-virtual {v10, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    instance-of v5, v8, Lcom/google/android/mms/pdu/RetrieveConf;

    if-eqz v5, :cond_2

    .line 396
    move-object v0, v8

    check-cast v0, Lcom/google/android/mms/pdu/RetrieveConf;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/google/android/mms/pdu/RetrieveConf;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->extractEncStr(Landroid/content/Context;Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v5

    .line 397
    .local v5, from:Ljava/lang/String;
    const/16 v12, 0xa

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 398
    const v12, 0x7f0900c5

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_7

    .end local v5           #from:Ljava/lang/String;
    :goto_3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    :cond_2
    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 405
    const v5, 0x7f0900c6

    invoke-virtual {v10, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    invoke-virtual {v8}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v5

    .line 407
    .local v5, to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v5, :cond_8

    .line 408
    invoke-static {v5}, Lcom/google/android/mms/pdu/EncodedStringValue;->concat([Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v5

    .end local v5           #to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    :goto_4
    instance-of v5, v8, Lcom/google/android/mms/pdu/SendReq;

    if-eqz v5, :cond_3

    .line 417
    move-object v0, v8

    check-cast v0, Lcom/google/android/mms/pdu/SendReq;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/google/android/mms/pdu/SendReq;->getBcc()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v5

    .line 418
    .local v5, values:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v5, :cond_3

    array-length v12, v5

    if-lez v12, :cond_3

    .line 419
    const/16 v12, 0xa

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 420
    const v12, 0x7f0900c7

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    invoke-static {v5}, Lcom/google/android/mms/pdu/EncodedStringValue;->concat([Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v5

    .end local v5           #values:[Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    :cond_3
    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 427
    const/4 v5, 0x0

    .line 428
    .local v5, msgBox:I
    if-eqz p3, :cond_9

    .line 429
    const/16 p3, 0x2

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    .end local p3
    move-result p1

    .line 433
    .end local v5           #msgBox:I
    .local p1, msgBox:I
    :goto_5
    const/16 p3, 0x3

    move/from16 v0, p1

    move/from16 v1, p3

    if-ne v0, v1, :cond_a

    .line 434
    const p3, 0x7f0900ca

    move-object v0, v10

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    move-object v0, v4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    :goto_6
    invoke-virtual {v8}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getDate()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    const/16 p3, 0x1

    move-object/from16 v0, p0

    move-wide v1, v12

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object p3

    move-object v0, v4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    const/16 p3, 0xa

    move-object v0, v4

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 446
    const p3, 0x7f0900cb

    move-object v0, v10

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    move-object v0, v4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    invoke-virtual {v8}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object p3

    .line 449
    .local p3, subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz p3, :cond_c

    .line 450
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object p3

    .line 452
    .local p3, subStr:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v5

    add-int p2, p2, v5

    .line 453
    move-object v0, v4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    .end local p3           #subStr:Ljava/lang/String;
    :goto_7
    const/16 p3, 0xa

    move-object v0, v4

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 460
    const p3, 0x7f0900cd

    move-object v0, v10

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    move-object v0, v4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    invoke-virtual {v8}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getPriority()I

    move-result p3

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->getPriorityDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p3

    move-object v0, v4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    const/16 p3, 0xa

    move-object v0, v4

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 465
    const p3, 0x7f0900cc

    move-object v0, v10

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    move-object v0, v4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    move/from16 v0, p2

    add-int/lit16 v0, v0, 0x3ff

    move/from16 p3, v0

    move/from16 v0, p3

    div-int/lit16 v0, v0, 0x400

    move/from16 p3, v0

    move-object v0, v4

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 468
    const-string p3, " KB"

    move-object v0, v4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    const/16 p3, 0x4

    move/from16 v0, p1

    move/from16 v1, p3

    if-ne v0, v1, :cond_e

    .line 472
    invoke-static {v9}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    .line 473
    .end local v9           #uri:Landroid/net/Uri;
    .local v8, msgId:J
    const/16 p1, 0x0

    .line 475
    .local p1, respStatus:I
    const-string p1, "\nStatus: "

    .end local p1           #respStatus:I
    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    move-object/from16 v0, p0

    move-wide v1, v8

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->getResponseStatus(Landroid/content/Context;J)I

    move-result p1

    .line 478
    .restart local p1       #respStatus:I
    if-lez p1, :cond_d

    .line 480
    invoke-static/range {p1 .. p1}, Lcom/android/mms/ui/MessageUtils;->getErrorStringID(I)I

    move-result p1

    .end local p1           #respStatus:I
    move-object v0, v10

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    .end local v8           #msgId:J
    :cond_4
    :goto_8
    const/16 p1, 0x80

    move v0, v11

    move/from16 v1, p1

    if-ne v0, v1, :cond_5

    const-wide/16 v8, 0x0

    cmp-long p1, v6, v8

    if-lez p1, :cond_5

    .line 492
    move-object/from16 v0, p0

    move-wide v1, v6

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/DeliveryReadReport;->getMmsReportText(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    .line 493
    .local p0, statusStr:Ljava/lang/String;
    if-eqz p0, :cond_5

    .line 494
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0           #statusStr:Ljava/lang/String;
    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    .line 377
    .end local v6           #id:J
    .local v5, id:J
    .local p0, context:Landroid/content/Context;
    .local p1, cursor:Landroid/database/Cursor;
    .local p3, isView:Z
    :cond_6
    const/4 v5, 0x1

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    .end local v5           #id:J
    move-result-wide v5

    .restart local v5       #id:J
    move-wide v6, v5

    .end local v5           #id:J
    .restart local v6       #id:J
    goto/16 :goto_2

    .line 385
    .restart local v9       #uri:Landroid/net/Uri;
    :catch_0
    move-exception p1

    .line 386
    .local p1, e:Lcom/google/android/mms/MmsException;
    const-string p3, "MessageUtils"

    .end local p3           #isView:Z
    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #details:Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to load the message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    move-object v1, v4

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 387
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .end local p0           #context:Landroid/content/Context;
    const p1, 0x7f0900bf

    invoke-virtual/range {p0 .. p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p1           #e:Lcom/google/android/mms/MmsException;
    move-result-object p0

    goto/16 :goto_1

    .line 399
    .restart local v4       #details:Ljava/lang/StringBuilder;
    .local v5, from:Ljava/lang/String;
    .local v8, msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    .restart local p0       #context:Landroid/content/Context;
    .local p1, cursor:Landroid/database/Cursor;
    .restart local p3       #isView:Z
    :cond_7
    const v5, 0x7f09007f

    invoke-virtual {v10, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local v5           #from:Ljava/lang/String;
    move-result-object v5

    goto/16 :goto_3

    .line 411
    .local v5, to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_8
    const-string v5, "MessageUtils"

    .end local v5           #to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    const-string v12, "recipient list is empty!"

    invoke-static {v5, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 431
    .local v5, msgBox:I
    :cond_9
    const/16 p3, 0x11

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    .end local p3           #isView:Z
    move-result p1

    .end local v5           #msgBox:I
    .local p1, msgBox:I
    goto/16 :goto_5

    .line 435
    :cond_a
    const/16 p3, 0x1

    move/from16 v0, p1

    move/from16 v1, p3

    if-ne v0, v1, :cond_b

    .line 436
    const p3, 0x7f0900c9

    move-object v0, v10

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    move-object v0, v4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 438
    :cond_b
    const p3, 0x7f0900c8

    move-object v0, v10

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    move-object v0, v4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 455
    .local p3, subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_c
    const p3, 0x7f0901c6

    move-object v0, v10

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p3           #subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    move-result-object p3

    move-object v0, v4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 483
    .end local v9           #uri:Landroid/net/Uri;
    .local v8, msgId:J
    .local p1, respStatus:I
    :cond_d
    const-string p1, "Pending"

    .end local p1           #respStatus:I
    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 485
    .local v8, msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    .restart local v9       #uri:Landroid/net/Uri;
    .local p1, msgBox:I
    :cond_e
    const/16 p3, 0x2

    move/from16 v0, p1

    move/from16 v1, p3

    if-ne v0, v1, :cond_4

    .line 487
    const-string p1, "\nStatus: Sent"

    .end local p1           #msgBox:I
    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8
.end method

.method private static getNotificationIndDetails(Landroid/content/Context;Landroid/database/Cursor;Z)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "cursor"
    .parameter "isView"

    .prologue
    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    .local v1, details:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 224
    .local v4, res:Landroid/content/res/Resources;
    const-wide/16 v2, 0x0

    .line 225
    .local v2, id:J
    if-eqz p2, :cond_0

    .line 226
    const/4 p2, 0x0

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    .end local p2
    move-result-wide p1

    .line 230
    .end local v2           #id:J
    .local p1, id:J
    :goto_0
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p2

    .line 234
    .end local p1           #id:J
    .local p2, uri:Landroid/net/Uri;
    :try_start_0
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/google/android/mms/pdu/NotificationInd;

    move-object p2, v0
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    .local p2, nInd:Lcom/google/android/mms/pdu/NotificationInd;
    const p1, 0x7f0900c1

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    const p1, 0x7f0900c4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/NotificationInd;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/mms/ui/MessageUtils;->extractEncStr(Landroid/content/Context;Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object p1

    .line 247
    .local p1, from:Ljava/lang/String;
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 248
    const v2, 0x7f0900c5

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .end local p1           #from:Ljava/lang/String;
    :goto_1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    const/16 p1, 0xa

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 254
    const p1, 0x7f09001c

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/google/android/mms/pdu/NotificationInd;->getExpiry()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    const/4 v7, 0x1

    invoke-static {p0, v5, v6, v7}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {v4, p1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    const/16 p1, 0xa

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 261
    const p1, 0x7f0900cb

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/NotificationInd;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object p1

    .line 264
    .local p1, subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz p1, :cond_2

    .line 265
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object p1

    .end local p1           #subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    :goto_2
    const/16 p1, 0xa

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 280
    const p1, 0x7f0900cc

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/NotificationInd;->getMessageSize()J

    move-result-wide p1

    const-wide/16 v2, 0x3ff

    add-long/2addr p1, v2

    const-wide/16 v2, 0x400

    div-long/2addr p1, v2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    const p1, 0x7f09001d

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .end local p0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .end local v1           #details:Ljava/lang/StringBuilder;
    .end local p2           #nInd:Lcom/google/android/mms/pdu/NotificationInd;
    :goto_3
    return-object p0

    .line 228
    .restart local v1       #details:Ljava/lang/StringBuilder;
    .restart local v2       #id:J
    .restart local p0
    .local p1, cursor:Landroid/database/Cursor;
    .local p2, isView:Z
    :cond_0
    const/4 p2, 0x1

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    .end local p2           #isView:Z
    move-result-wide p1

    .end local v2           #id:J
    .local p1, id:J
    goto/16 :goto_0

    .line 236
    .end local p1           #id:J
    .local p2, uri:Landroid/net/Uri;
    :catch_0
    move-exception p1

    .line 237
    .local p1, e:Lcom/google/android/mms/MmsException;
    const-string v1, "MessageUtils"

    .end local v1           #details:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load the message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    .end local p2           #uri:Landroid/net/Uri;
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 238
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .end local p0
    const p1, 0x7f0900bf

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p1           #e:Lcom/google/android/mms/MmsException;
    move-result-object p0

    goto :goto_3

    .line 249
    .restart local v1       #details:Ljava/lang/StringBuilder;
    .restart local p0
    .local p1, from:Ljava/lang/String;
    .local p2, nInd:Lcom/google/android/mms/pdu/NotificationInd;
    :cond_1
    const p1, 0x7f09007f

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p1           #from:Ljava/lang/String;
    move-result-object p1

    goto/16 :goto_1

    .line 267
    .local p1, subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_2
    const p1, 0x7f0901c6

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p1           #subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method private static getPriorityDescription(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "PriorityValue"

    .prologue
    .line 832
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 833
    .local v0, res:Landroid/content/res/Resources;
    packed-switch p1, :pswitch_data_0

    .line 840
    :pswitch_0
    const v1, 0x7f0900cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 835
    :pswitch_1
    const v1, 0x7f0900ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 837
    :pswitch_2
    const v1, 0x7f0900d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 833
    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getRecipientsByIds(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "recipientIds"
    .parameter "allowQuery"

    .prologue
    .line 1086
    sget-object v2, Lcom/android/mms/ui/MessageUtils;->sRecipientAddress:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1087
    .local v1, value:Ljava/lang/String;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 1102
    :goto_0
    return-object v2

    .line 1090
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1091
    invoke-static {p0, p1, p2}, Lcom/android/mms/ui/MessageUtils;->extractIdsToAddresses(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1093
    .local v0, addressBuf:Ljava/lang/StringBuilder;
    if-nez v0, :cond_1

    .line 1095
    const-string v2, ""

    goto :goto_0

    .line 1097
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1101
    .end local v0           #addressBuf:Ljava/lang/StringBuilder;
    :goto_1
    sget-object v2, Lcom/android/mms/ui/MessageUtils;->sRecipientAddress:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    .line 1102
    goto :goto_0

    .line 1099
    :cond_2
    const-string v1, ""

    goto :goto_1
.end method

.method public static getRecipientsFromPDU(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .parameter "uri"
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 295
    :try_start_0
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v1

    check-cast v1, Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    .local v1, msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    instance-of v3, v1, Lcom/google/android/mms/pdu/SendReq;

    if-eqz v3, :cond_0

    .line 303
    check-cast v1, Lcom/google/android/mms/pdu/SendReq;

    .end local v1           #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/SendReq;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v2

    .line 304
    .local v2, values:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    .line 306
    invoke-static {v2}, Lcom/google/android/mms/pdu/EncodedStringValue;->concat([Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v3

    .line 309
    .end local v2           #values:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :goto_0
    return-object v3

    .line 297
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 298
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v3, "MessageUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to load the message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v6

    .line 299
    goto :goto_0

    .end local v0           #e:Lcom/google/android/mms/MmsException;
    :cond_0
    move-object v3, v6

    .line 309
    goto :goto_0
.end method

.method public static getResponseStatus(Landroid/content/Context;J)I
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 2321
    const/4 v7, 0x0

    .line 2322
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2325
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2326
    const-string v1, "resp_st"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 2329
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2331
    if-eqz v1, :cond_0

    .line 2332
    const-string v0, "MessageUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Response status is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2334
    :cond_0
    return v1

    .line 2329
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_1
    move v1, v7

    goto :goto_0
.end method

.method private static getResponseTypeTextID(I)I
    .locals 1
    .parameter "msgResponseType"

    .prologue
    .line 704
    const v0, 0x7f090207

    .line 706
    .local v0, id:I
    packed-switch p0, :pswitch_data_0

    .line 745
    :goto_0
    return v0

    .line 709
    :pswitch_0
    const v0, 0x7f0901f9

    .line 710
    goto :goto_0

    .line 713
    :pswitch_1
    const v0, 0x7f0901fa

    .line 714
    goto :goto_0

    .line 717
    :pswitch_2
    const v0, 0x7f0901fb

    .line 718
    goto :goto_0

    .line 722
    :pswitch_3
    const v0, 0x7f0901fc

    .line 723
    goto :goto_0

    .line 727
    :pswitch_4
    const v0, 0x7f0901fd

    .line 728
    goto :goto_0

    .line 731
    :pswitch_5
    const v0, 0x7f0901fe

    .line 732
    goto :goto_0

    .line 738
    :pswitch_6
    const v0, 0x7f0901ff

    .line 739
    goto :goto_0

    .line 742
    :pswitch_7
    const v0, 0x7f090200

    goto :goto_0

    .line 706
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private static getSeverityTextID(I)I
    .locals 1
    .parameter "msgSeverity"

    .prologue
    .line 671
    const v0, 0x7f090207

    .line 673
    .local v0, id:I
    packed-switch p0, :pswitch_data_0

    .line 684
    :goto_0
    return v0

    .line 676
    :pswitch_0
    const v0, 0x7f090201

    .line 677
    goto :goto_0

    .line 680
    :pswitch_1
    const v0, 0x7f090202

    goto :goto_0

    .line 673
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getSmallTime(Landroid/content/Context;J)Ljava/lang/CharSequence;
    .locals 12
    .parameter "context"
    .parameter "when"

    .prologue
    .line 998
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v6

    .line 1001
    .local v6, b24:Z
    const v4, 0xef00

    .line 1002
    .local v4, MAGIC1:C
    const v5, 0xef01

    .line 1003
    .local v5, MAGIC2:C
    const/4 v2, 0x0

    .line 1004
    .local v2, AM_PM_STYLE_NORMAL:I
    const/4 v3, 0x1

    .line 1005
    .local v3, AM_PM_STYLE_SMALL:I
    const/4 v1, 0x2

    .line 1006
    .local v1, AM_PM_STYLE_GONE:I
    const/4 v0, 0x0

    .line 1008
    .local v0, AM_PM_STYLE:I
    if-eqz v6, :cond_1

    .line 1009
    const v8, 0x1040076

    .line 1015
    .local v8, res:I
    :goto_0
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1018
    .local v7, format:Ljava/lang/String;
    sget-object v11, Lcom/android/mms/ui/MessageUtils;->mClockFormatString:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    if-nez v6, :cond_2

    .line 1050
    :cond_0
    new-instance v10, Ljava/text/SimpleDateFormat;

    invoke-direct {v10, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .local v10, sdf:Ljava/text/SimpleDateFormat;
    sput-object v10, Lcom/android/mms/ui/MessageUtils;->mClockFormat:Ljava/text/SimpleDateFormat;

    .line 1051
    sput-object v7, Lcom/android/mms/ui/MessageUtils;->mClockFormatString:Ljava/lang/String;

    .line 1055
    :goto_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 1077
    .local v9, result:Ljava/lang/String;
    return-object v9

    .line 1011
    .end local v7           #format:Ljava/lang/String;
    .end local v8           #res:I
    .end local v9           #result:Ljava/lang/String;
    .end local v10           #sdf:Ljava/text/SimpleDateFormat;
    :cond_1
    const v8, 0x1040075

    .restart local v8       #res:I
    goto :goto_0

    .line 1053
    .restart local v7       #format:Ljava/lang/String;
    :cond_2
    sget-object v10, Lcom/android/mms/ui/MessageUtils;->mClockFormat:Ljava/text/SimpleDateFormat;

    .restart local v10       #sdf:Ljava/text/SimpleDateFormat;
    goto :goto_1
.end method

.method private static getTextMessageDetails(Landroid/content/Context;Landroid/database/Cursor;Z)Ljava/lang/String;
    .locals 12
    .parameter "context"
    .parameter "cursor"
    .parameter "isView"

    .prologue
    .line 500
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 501
    .local v2, details:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 502
    .local v9, res:Landroid/content/res/Resources;
    const/4 v0, 0x0

    .line 504
    .local v0, isCmas:Z
    const-string v1, "#CMAS#"

    .line 506
    .local v1, cmas_addr:Ljava/lang/String;
    const/4 v4, -0x1

    .line 507
    .local v4, msgCategory:I
    const/4 v6, -0x1

    .line 508
    .local v6, msgResponseType:I
    const/4 v7, -0x1

    .line 509
    .local v7, msgSeverity:I
    const/4 v8, -0x1

    .line 510
    .local v8, msgUrgency:I
    const/4 v5, -0x1

    .line 513
    .local v5, msgCertainity:I
    const v0, 0x7f0900c1

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local v0           #isCmas:Z
    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    const v0, 0x7f0900c2

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 518
    const/4 v0, 0x0

    .line 519
    .local v0, smsType:I
    if-eqz p2, :cond_7

    .line 520
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    .end local v0           #smsType:I
    move-result v0

    .restart local v0       #smsType:I
    move v10, v0

    .line 524
    .end local v0           #smsType:I
    .local v10, smsType:I
    :goto_0
    invoke-static {v10}, Landroid/provider/Telephony$Sms;->isOutgoingFolder(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 525
    const v0, 0x7f0900c6

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    :goto_1
    if-eqz p2, :cond_9

    .line 531
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 536
    .local v0, address:Ljava/lang/String;
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    .line 538
    .local v3, isCmas:Z
    if-eqz v3, :cond_a

    .line 540
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .end local v1           #cmas_addr:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .end local v0           #address:Ljava/lang/String;
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f090211

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 541
    .restart local v0       #address:Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    :goto_3
    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 549
    .end local v0           #address:Ljava/lang/String;
    const v0, 0x7f0900cd

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    const/4 v0, 0x0

    .line 551
    .local v0, priority:I
    if-eqz p2, :cond_b

    if-nez v3, :cond_b

    .line 552
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .end local v0           #priority:I
    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 560
    .restart local v0       #priority:I
    :goto_4
    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    .line 561
    const v0, 0x7f0900ce

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local v0           #priority:I
    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    :goto_5
    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 567
    const/4 v0, 0x3

    if-ne v10, v0, :cond_e

    .line 568
    const v0, 0x7f0900ca

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    :goto_6
    const-wide/16 v0, 0x0

    .line 575
    .local v0, date:J
    if-eqz p2, :cond_10

    .line 576
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    .end local v0           #date:J
    move-result-wide v0

    .line 580
    .restart local v0       #date:J
    :goto_7
    const/4 v11, 0x1

    invoke-static {p0, v0, v1, v11}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v0

    .end local v0           #date:J
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    invoke-static {v10}, Landroid/provider/Telephony$Sms;->isOutgoingFolder(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 584
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 585
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "pref_key_sms_delivery_reports"

    const/4 v10, 0x0

    invoke-interface {v0, v1, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .end local v10           #smsType:I
    move-result v0

    .line 587
    .local v0, DeliveryReport:Z
    if-eqz v0, :cond_0

    .line 589
    if-eqz p2, :cond_11

    .line 590
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    .end local v0           #DeliveryReport:Z
    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/DeliveryReadReport;->getSmsDeliveryReportText(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    .line 595
    .local p0, deliveryStatus:Ljava/lang/String;
    :goto_8
    if-eqz p0, :cond_0

    .line 596
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0           #deliveryStatus:Ljava/lang/String;
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    :cond_0
    const/4 p0, 0x0

    .line 602
    .local p0, errorCode:I
    if-eqz p2, :cond_12

    .line 603
    const/4 p0, 0x4

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    .end local p0           #errorCode:I
    move-result p0

    .line 608
    .restart local p0       #errorCode:I
    :goto_9
    if-eqz p0, :cond_1

    .line 609
    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0900d2

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 614
    .end local p0           #errorCode:I
    :cond_1
    if-eqz v3, :cond_14

    .line 616
    if-eqz p2, :cond_13

    .line 617
    const/4 p0, 0x6

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 618
    .end local v7           #msgSeverity:I
    .local v1, msgSeverity:I
    const/4 p0, 0x7

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 619
    .end local v8           #msgUrgency:I
    .local v3, msgUrgency:I
    const/16 p0, 0x8

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 620
    .end local v6           #msgResponseType:I
    .local v0, msgResponseType:I
    const/16 p0, 0x9

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 621
    .end local v5           #msgCertainity:I
    .local p2, msgCertainity:I
    const/16 p0, 0xa

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    .end local v4           #msgCategory:I
    .local p0, msgCategory:I
    move p1, p2

    .end local p2           #msgCertainity:I
    .local p1, msgCertainity:I
    move p2, v0

    .end local v0           #msgResponseType:I
    .local p2, msgResponseType:I
    move v0, v1

    .end local v1           #msgSeverity:I
    .local v0, msgSeverity:I
    move v1, v3

    .line 632
    .end local v3           #msgUrgency:I
    .local v1, msgUrgency:I
    :goto_a
    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 633
    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    .line 635
    const v3, 0x7f0901e5

    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->getSeverityTextID(I)I

    move-result v3

    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 641
    :cond_2
    const/4 v3, -0x1

    if-eq v1, v3, :cond_3

    .line 642
    const v3, 0x7f0901e6

    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->getUrgencyTextID(I)I

    move-result v3

    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 648
    :cond_3
    const/4 v3, -0x1

    if-eq p2, v3, :cond_4

    .line 649
    const v3, 0x7f0901e4

    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    invoke-static {p2}, Lcom/android/mms/ui/MessageUtils;->getResponseTypeTextID(I)I

    move-result v3

    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 655
    :cond_4
    const/4 v3, -0x1

    if-eq p1, v3, :cond_5

    .line 656
    const v3, 0x7f0901e7

    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->getCertainityTextID(I)I

    move-result v3

    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 662
    :cond_5
    const/4 v3, -0x1

    if-eq p0, v3, :cond_6

    .line 663
    const v3, 0x7f0901e2

    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->getCmaeCategoryTextID(I)I

    move-result v3

    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    :cond_6
    :goto_b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0           #msgCategory:I
    return-object p0

    .line 522
    .local v0, smsType:I
    .local v1, cmas_addr:Ljava/lang/String;
    .restart local v4       #msgCategory:I
    .restart local v5       #msgCertainity:I
    .restart local v6       #msgResponseType:I
    .restart local v7       #msgSeverity:I
    .restart local v8       #msgUrgency:I
    .local p0, context:Landroid/content/Context;
    .local p1, cursor:Landroid/database/Cursor;
    .local p2, isView:Z
    :cond_7
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    .end local v0           #smsType:I
    move-result v0

    .restart local v0       #smsType:I
    move v10, v0

    .end local v0           #smsType:I
    .restart local v10       #smsType:I
    goto/16 :goto_0

    .line 527
    :cond_8
    const v0, 0x7f0900c5

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 534
    :cond_9
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, address:Ljava/lang/String;
    goto/16 :goto_2

    .line 544
    .local v3, isCmas:Z
    :cond_a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 554
    .end local v1           #cmas_addr:Ljava/lang/String;
    .local v0, priority:I
    :cond_b
    if-eqz v3, :cond_c

    .line 555
    const/4 v0, 0x4

    goto/16 :goto_4

    .line 558
    :cond_c
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .end local v0           #priority:I
    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .restart local v0       #priority:I
    goto/16 :goto_4

    .line 563
    :cond_d
    const v0, 0x7f0900cf

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local v0           #priority:I
    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 569
    :cond_e
    const/4 v0, 0x1

    if-ne v10, v0, :cond_f

    .line 570
    const v0, 0x7f0900c9

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 572
    :cond_f
    const v0, 0x7f0900c8

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 578
    .local v0, date:J
    :cond_10
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    .end local v0           #date:J
    move-result-wide v0

    .restart local v0       #date:J
    goto/16 :goto_7

    .line 592
    .end local v10           #smsType:I
    .local v0, DeliveryReport:Z
    :cond_11
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    .end local v0           #DeliveryReport:Z
    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/DeliveryReadReport;->getSmsDeliveryReportText(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    .local p0, deliveryStatus:Ljava/lang/String;
    goto/16 :goto_8

    .line 605
    .local p0, errorCode:I
    :cond_12
    const/16 p0, 0xa

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    .end local p0           #errorCode:I
    move-result p0

    .restart local p0       #errorCode:I
    goto/16 :goto_9

    .line 624
    .end local p0           #errorCode:I
    :cond_13
    const/16 p0, 0x1a

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 625
    .end local v7           #msgSeverity:I
    .local v1, msgSeverity:I
    const/16 p0, 0x1b

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 626
    .end local v8           #msgUrgency:I
    .local v3, msgUrgency:I
    const/16 p0, 0x19

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 627
    .end local v6           #msgResponseType:I
    .local v0, msgResponseType:I
    const/16 p0, 0x1c

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 628
    .end local v5           #msgCertainity:I
    .local p2, msgCertainity:I
    const/16 p0, 0x18

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    .end local v4           #msgCategory:I
    .local p0, msgCategory:I
    move p1, p2

    .end local p2           #msgCertainity:I
    .local p1, msgCertainity:I
    move p2, v0

    .end local v0           #msgResponseType:I
    .local p2, msgResponseType:I
    move v0, v1

    .end local v1           #msgSeverity:I
    .local v0, msgSeverity:I
    move v1, v3

    .end local v3           #msgUrgency:I
    .local v1, msgUrgency:I
    goto/16 :goto_a

    .end local v0           #msgSeverity:I
    .end local v1           #msgUrgency:I
    .end local p0           #msgCategory:I
    .local v3, isCmas:Z
    .restart local v4       #msgCategory:I
    .restart local v5       #msgCertainity:I
    .restart local v6       #msgResponseType:I
    .restart local v7       #msgSeverity:I
    .restart local v8       #msgUrgency:I
    .local p1, cursor:Landroid/database/Cursor;
    .local p2, isView:Z
    :cond_14
    move p1, v5

    .end local v5           #msgCertainity:I
    .local p1, msgCertainity:I
    move v1, v8

    .end local v8           #msgUrgency:I
    .restart local v1       #msgUrgency:I
    move v0, v7

    .end local v7           #msgSeverity:I
    .restart local v0       #msgSeverity:I
    move p2, v6

    .end local v6           #msgResponseType:I
    .local p2, msgResponseType:I
    move p0, v4

    .end local v4           #msgCategory:I
    .restart local p0       #msgCategory:I
    goto/16 :goto_b
.end method

.method private static getUrgencyTextID(I)I
    .locals 1
    .parameter "msgUrgency"

    .prologue
    .line 688
    const v0, 0x7f090207

    .line 690
    .local v0, id:I
    packed-switch p0, :pswitch_data_0

    .line 700
    :goto_0
    return v0

    .line 693
    :pswitch_0
    const v0, 0x7f090203

    .line 694
    goto :goto_0

    .line 697
    :pswitch_1
    const v0, 0x7f090204

    goto :goto_0

    .line 690
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getViewTitleStrings(Landroid/content/Context;J)Ljava/util/ArrayList;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v4, "MessageUtils"

    .line 2155
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 2156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2190
    :goto_0
    return-object v0

    .line 2158
    :cond_0
    const-string v0, ""

    .line 2159
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 2163
    :try_start_0
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v0

    check-cast v0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2170
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2171
    instance-of v2, v0, Lcom/google/android/mms/pdu/RetrieveConf;

    if-eqz v2, :cond_2

    .line 2173
    check-cast v0, Lcom/google/android/mms/pdu/RetrieveConf;

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/RetrieveConf;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->extractEncStr(Landroid/content/Context;Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v0

    .line 2174
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    move-object v0, v1

    .line 2190
    goto :goto_0

    .line 2165
    :catch_0
    move-exception v0

    .line 2166
    const-string v2, "MessageUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load the message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 2179
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    .line 2180
    if-eqz v0, :cond_3

    .line 2181
    const/4 v2, 0x0

    :goto_2
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 2182
    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2181
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2186
    :cond_3
    const-string v0, "MessageUtils"

    const-string v0, "getViewTitleString : recipient list is empty!"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static handleReadReport(Landroid/content/Context;JILjava/lang/Runnable;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1464
    const-string v0, "m_type = 132 AND seen = 0 AND rr = 128"

    .line 1468
    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    if-eqz v1, :cond_4

    .line 1469
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "thread_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 1472
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v3, v6

    const-string v0, "m_id"

    aput-object v0, v3, v7

    move-object v0, p0

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1476
    if-nez v0, :cond_0

    .line 1529
    :goto_1
    return-void

    .line 1480
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1482
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 1483
    if-eqz p4, :cond_1

    .line 1484
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1494
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1489
    :cond_2
    :goto_2
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1490
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 1491
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2}, Lcom/android/mms/util/AddressUtils;->getFrom(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1494
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1497
    new-instance v0, Lcom/android/mms/ui/MessageUtils$3;

    invoke-direct {v0, v1, p0, p3, p4}, Lcom/android/mms/ui/MessageUtils$3;-><init>(Ljava/util/Map;Landroid/content/Context;ILjava/lang/Runnable;)V

    .line 1510
    new-instance v1, Lcom/android/mms/ui/MessageUtils$4;

    invoke-direct {v1, p4}, Lcom/android/mms/ui/MessageUtils$4;-><init>(Ljava/lang/Runnable;)V

    .line 1518
    new-instance v2, Lcom/android/mms/ui/MessageUtils$5;

    invoke-direct {v2, p4}, Lcom/android/mms/ui/MessageUtils$5;-><init>(Ljava/lang/Runnable;)V

    .line 1526
    invoke-static {p0, v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->confirmReadReportDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_1

    :cond_4
    move-object v4, v0

    goto :goto_0
.end method

.method public static handleReadReportOne(Landroid/content/Context;JILjava/lang/Runnable;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1536
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 1537
    if-eqz p4, :cond_0

    .line 1538
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    .line 1599
    :cond_0
    :goto_0
    return-void

    .line 1543
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "m_type = 132 AND seen = 0 AND rr = 128 AND _id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1548
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "m_id"

    aput-object v0, v3, v6

    move-object v0, p0

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1552
    if-eqz v0, :cond_2

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1553
    :cond_2
    if-eqz p4, :cond_3

    .line 1554
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1563
    :cond_3
    if-eqz v0, :cond_0

    .line 1564
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1558
    :cond_4
    :try_start_1
    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1559
    invoke-static {p0, v1}, Lcom/android/mms/util/AddressUtils;->getFrom(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 1560
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 1563
    if-eqz v0, :cond_5

    .line 1564
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1567
    :cond_5
    new-instance v0, Lcom/android/mms/ui/MessageUtils$6;

    move-object v1, p0

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/MessageUtils$6;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    .line 1578
    new-instance v1, Lcom/android/mms/ui/MessageUtils$7;

    invoke-direct {v1, p4}, Lcom/android/mms/ui/MessageUtils$7;-><init>(Ljava/lang/Runnable;)V

    .line 1587
    new-instance v2, Lcom/android/mms/ui/MessageUtils$8;

    invoke-direct {v2, p4}, Lcom/android/mms/ui/MessageUtils$8;-><init>(Ljava/lang/Runnable;)V

    .line 1596
    invoke-static {p0, v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->confirmReadReportDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0

    .line 1563
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_6

    .line 1564
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v1
.end method

.method public static hasNonGSMCharaterExceptKorean(Ljava/lang/String;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    const-string v5, "MessageUtils"

    .line 2243
    const-string v0, "MessageUtils"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[hasNonGSMCharater] msgText.length() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v4

    .line 2249
    :goto_0
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 2250
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 2255
    const/16 v3, 0x3130

    if-ge v3, v2, :cond_0

    const/16 v3, 0x318d

    if-lt v2, v3, :cond_1

    :cond_0
    const v3, 0xabff

    if-ge v3, v2, :cond_2

    const v3, 0xd7a4

    if-ge v2, v3, :cond_2

    :cond_1
    move v0, v4

    .line 2270
    :goto_1
    return v0

    .line 2259
    :cond_2
    invoke-static {v2}, Lcom/android/internal/telephony/GsmAlphabet;->convertEachCharacter(C)C

    move-result v2

    .line 2260
    const v3, 0xfeff

    if-ne v3, v2, :cond_3

    .line 2263
    const/4 v0, 0x1

    goto :goto_1

    .line 2266
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2249
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2268
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2269
    const-string v1, "MessageUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[hasNonGSMCharater] stringBuilder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 2270
    goto :goto_1
.end method

.method public static isAlias(Ljava/lang/String;)Z
    .locals 3
    .parameter "string"

    .prologue
    const/4 v2, 0x0

    .line 1781
    invoke-static {}, Lcom/android/mms/MmsConfig;->isAliasEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 1807
    :goto_0
    return v1

    .line 1785
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    .line 1786
    goto :goto_0

    .line 1793
    :cond_1
    invoke-static {p0}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    .line 1794
    goto :goto_0

    .line 1797
    :cond_2
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isAlphaNumeric(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    .line 1798
    goto :goto_0

    .line 1801
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1803
    .local v0, len:I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAliasMinChars()I

    move-result v1

    if-lt v0, v1, :cond_4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getAliasMaxChars()I

    move-result v1

    if-le v0, v1, :cond_5

    :cond_4
    move v1, v2

    .line 1804
    goto :goto_0

    .line 1807
    :cond_5
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isAlphaNumeric(Ljava/lang/String;)Z
    .locals 4
    .parameter "s"

    .prologue
    .line 1830
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 1831
    .local v1, chars:[C
    const/4 v2, 0x0

    .local v2, x:I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_4

    .line 1832
    aget-char v0, v1, v2

    .line 1834
    .local v0, c:C
    const/16 v3, 0x61

    if-lt v0, v3, :cond_1

    const/16 v3, 0x7a

    if-gt v0, v3, :cond_1

    .line 1831
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1837
    :cond_1
    const/16 v3, 0x41

    if-lt v0, v3, :cond_2

    const/16 v3, 0x5a

    if-le v0, v3, :cond_0

    .line 1840
    :cond_2
    const/16 v3, 0x30

    if-lt v0, v3, :cond_3

    const/16 v3, 0x39

    if-le v0, v3, :cond_0

    .line 1844
    :cond_3
    const/4 v3, 0x0

    .line 1846
    .end local v0           #c:C
    :goto_1
    return v3

    :cond_4
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public static isAnimatedImage(Landroid/content/ContentResolver;Landroid/net/Uri;)Z
    .locals 6
    .parameter "contentResolver"
    .parameter "uri"

    .prologue
    const/4 v5, 0x0

    .line 2373
    const/4 v1, 0x0

    .line 2374
    .local v1, is:Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 2377
    .local v3, streamSize:I
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2379
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 2384
    :goto_0
    :try_start_2
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-static {v1, v3}, Lcom/android/mms/ui/MessageUtils;->streamToBytes(Ljava/io/InputStream;I)[B

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2385
    .end local v1           #is:Ljava/io/InputStream;
    .local v2, is:Ljava/io/InputStream;
    :try_start_3
    invoke-static {v2}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v4

    sput-object v4, Lcom/android/mms/ui/MessageUtils;->mMovie:Landroid/graphics/Movie;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_5

    .line 2391
    if-eqz v2, :cond_4

    .line 2393
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    move-object v1, v2

    .line 2400
    .end local v2           #is:Ljava/io/InputStream;
    .restart local v1       #is:Ljava/io/InputStream;
    :cond_0
    :goto_1
    sget-object v4, Lcom/android/mms/ui/MessageUtils;->mMovie:Landroid/graphics/Movie;

    if-nez v4, :cond_2

    move v4, v5

    .line 2402
    :goto_2
    return v4

    .line 2380
    :catch_0
    move-exception v0

    .line 2382
    .local v0, e:Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 2387
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 2389
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2391
    if-eqz v1, :cond_0

    .line 2393
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_1

    .line 2394
    :catch_2
    move-exception v0

    .line 2396
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 2394
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #is:Ljava/io/InputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    :catch_3
    move-exception v0

    .line 2396
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .line 2397
    .end local v2           #is:Ljava/io/InputStream;
    .restart local v1       #is:Ljava/io/InputStream;
    goto :goto_1

    .line 2391
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_4
    if-eqz v1, :cond_1

    .line 2393
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 2397
    :cond_1
    :goto_5
    throw v4

    .line 2394
    :catch_4
    move-exception v0

    .line 2396
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 2402
    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    sget-object v4, Lcom/android/mms/ui/MessageUtils;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v4}, Landroid/graphics/Movie;->duration()I

    move-result v4

    if-lez v4, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    move v4, v5

    goto :goto_2

    .line 2391
    .end local v1           #is:Ljava/io/InputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2           #is:Ljava/io/InputStream;
    .restart local v1       #is:Ljava/io/InputStream;
    goto :goto_4

    .line 2387
    .end local v1           #is:Ljava/io/InputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    :catch_5
    move-exception v4

    move-object v0, v4

    move-object v1, v2

    .end local v2           #is:Ljava/io/InputStream;
    .restart local v1       #is:Ljava/io/InputStream;
    goto :goto_3

    .end local v1           #is:Ljava/io/InputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    :cond_4
    move-object v1, v2

    .end local v2           #is:Ljava/io/InputStream;
    .restart local v1       #is:Ljava/io/InputStream;
    goto :goto_1
.end method

.method public static isContainKoreanChar(Ljava/lang/String;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 2339
    .line 2341
    if-eqz p0, :cond_4

    .line 2342
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    move v1, v4

    .line 2345
    :goto_1
    if-ge v1, v0, :cond_3

    .line 2347
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 2352
    const/16 v3, 0x3130

    if-ge v3, v2, :cond_0

    const/16 v3, 0x318d

    if-lt v2, v3, :cond_1

    :cond_0
    const v3, 0xabff

    if-ge v3, v2, :cond_2

    const v3, 0xd7a4

    if-ge v2, v3, :cond_2

    .line 2353
    :cond_1
    const/4 v0, 0x1

    .line 2357
    :goto_2
    return v0

    .line 2345
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v0, v4

    .line 2357
    goto :goto_2

    :cond_4
    move v0, v4

    goto :goto_0
.end method

.method public static isLocalNumber(Ljava/lang/String;)Z
    .locals 2
    .parameter "number"

    .prologue
    const/4 v1, 0x0

    .line 1445
    if-nez p0, :cond_0

    move v0, v1

    .line 1457
    :goto_0
    return v0

    .line 1453
    :cond_0
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    move v0, v1

    .line 1454
    goto :goto_0

    .line 1457
    :cond_1
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getLocalNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isLockmessage(Ljava/lang/String;JLandroid/content/ContentResolver;)J
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v6, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    const-string v4, "locked"

    .line 2068
    const-string v0, "mms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2069
    new-array v2, v2, [Ljava/lang/String;

    const-string v0, "locked"

    aput-object v4, v2, v1

    .line 2072
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p3

    move-object v4, v3

    move-object v5, v3

    .line 2073
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2075
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2076
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 2080
    if-eqz v0, :cond_4

    .line 2081
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-wide v0, v1

    .line 2101
    :goto_0
    return-wide v0

    .line 2077
    :catch_0
    move-exception v1

    .line 2080
    if-eqz v0, :cond_3

    .line 2081
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-wide v0, v6

    goto :goto_0

    .line 2080
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_0

    .line 2081
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v1

    .line 2085
    :cond_1
    new-array v2, v2, [Ljava/lang/String;

    const-string v0, "locked"

    aput-object v4, v2, v1

    .line 2088
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p3

    move-object v4, v3

    move-object v5, v3

    .line 2089
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2091
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2092
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v1

    .line 2096
    if-eqz v0, :cond_4

    .line 2097
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-wide v0, v1

    goto :goto_0

    .line 2093
    :catch_1
    move-exception v1

    .line 2096
    if-eqz v0, :cond_3

    .line 2097
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-wide v0, v6

    goto :goto_0

    .line 2096
    :catchall_1
    move-exception v1

    if-eqz v0, :cond_2

    .line 2097
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1

    :cond_3
    move-wide v0, v6

    goto :goto_0

    :cond_4
    move-wide v0, v1

    goto :goto_0
.end method

.method public static isNameAndNumber(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 2018
    const-string v0, " <"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 2019
    const-string v1, ">"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 2020
    const/4 v2, -0x1

    .line 2022
    if-ne v0, v2, :cond_0

    move v0, v3

    .line 2028
    :goto_0
    return v0

    .line 2025
    :cond_0
    if-eq v1, v2, :cond_1

    if-le v1, v0, :cond_2

    .line 2026
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v3

    .line 2028
    goto :goto_0
.end method

.method public static isNumberCanAddToContact(Ljava/lang/String;)Z
    .locals 3
    .parameter "number"

    .prologue
    const/4 v2, 0x0

    .line 1872
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 1883
    :goto_0
    return v1

    .line 1875
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1876
    .local v0, c:C
    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isSpecialChar(C)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    .line 1877
    goto :goto_0

    .line 1880
    :cond_1
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isValidMmsAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    .line 1881
    goto :goto_0

    .line 1883
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isSpecialChar(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 1887
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_0

    const/16 v0, 0x25

    if-eq p0, v0, :cond_0

    const/16 v0, 0x24

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidMmsAddress(Ljava/lang/String;)Z
    .locals 2
    .parameter "address"

    .prologue
    .line 1924
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->parseMmsAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1925
    .local v0, retVal:Ljava/lang/String;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isValidSmsAddress(Ljava/lang/String;)Z
    .locals 3
    .parameter "address"

    .prologue
    const/4 v2, 0x0

    .line 1968
    invoke-static {p0}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 1972
    :goto_0
    return v1

    .line 1971
    :cond_0
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->parseSmsAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1972
    .local v0, retVal:Ljava/lang/String;
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public static parseMmsAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "address"

    .prologue
    const/4 v2, 0x0

    .line 1936
    invoke-static {p0}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p0

    .line 1961
    :goto_0
    return-object v1

    .line 1940
    :cond_0
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isNameAndNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1941
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->extractNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1945
    :cond_1
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->parsePhoneNumberForMms(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1947
    .local v0, retVal:Ljava/lang/String;
    const-string v1, ""

    if-ne v0, v1, :cond_2

    move-object v1, v2

    .line 1948
    goto :goto_0

    .line 1951
    :cond_2
    if-eqz v0, :cond_3

    move-object v1, v0

    .line 1952
    goto :goto_0

    .line 1956
    :cond_3
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v1, p0

    .line 1957
    goto :goto_0

    :cond_4
    move-object v1, v2

    .line 1961
    goto :goto_0
.end method

.method private static parsePhoneNumberForMms(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "address"

    .prologue
    .line 1896
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1897
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1899
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 1900
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1903
    .local v1, c:C
    const/16 v4, 0x2b

    if-ne v1, v4, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 1904
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1899
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1908
    :cond_1
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1909
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1913
    :cond_2
    sget-object v4, Lcom/android/mms/ui/MessageUtils;->numericSugarMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 1914
    const/4 v4, 0x0

    .line 1917
    .end local v1           #c:C
    :goto_2
    return-object v4

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2
.end method

.method public static parseSmsAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "address"

    .prologue
    const/4 v2, 0x0

    .line 1982
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isNameAndNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1983
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->extractNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1987
    :cond_0
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->parsePhoneNumberForMms(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1989
    .local v0, retVal:Ljava/lang/String;
    const-string v1, ""

    if-ne v0, v1, :cond_1

    move-object v1, v2

    .line 2003
    :goto_0
    return-object v1

    .line 1993
    :cond_1
    if-eqz v0, :cond_2

    move-object v1, v0

    .line 1994
    goto :goto_0

    .line 1998
    :cond_2
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, p0

    .line 1999
    goto :goto_0

    :cond_3
    move-object v1, v2

    .line 2003
    goto :goto_0
.end method

.method public static pickAttachmentFile(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter "act"
    .parameter "folderPath"
    .parameter "contentType"
    .parameter "requestCode"

    .prologue
    .line 1231
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1232
    .local v0, myFilesIntent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 1233
    const-string v1, "com.sec.android.app.myfiles"

    const-string v2, "com.sec.android.app.myfiles.fileselector.SingleSelectorActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1234
    const-string v1, "com.sec.android.app.myfiles.PICK_DATA "

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1235
    const-string v1, "FOLDERPATH"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1236
    const-string v1, "CONTENT_TYPE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1238
    invoke-virtual {p0, v0, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1240
    :cond_0
    return-void
.end method

.method public static pickAttachmentImageOrVideoFile(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 2
    .parameter "act"
    .parameter "contentType"
    .parameter "requestCode"

    .prologue
    .line 1243
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1244
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 1245
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1246
    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1248
    :cond_0
    return-void
.end method

.method public static recordSound(Landroid/content/Context;ILcom/android/mms/model/SlideshowModel;Z)V
    .locals 8
    .parameter "context"
    .parameter "requestCode"
    .parameter "slideshow"
    .parameter "toReplaceMedia"

    .prologue
    const-string v7, "remain_size"

    .line 1162
    instance-of v5, p0, Landroid/app/Activity;

    if-eqz v5, :cond_0

    .line 1165
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1171
    .local v0, intent:Landroid/content/Intent;
    const-string v5, "com.sec.android.app.voicerecorder"

    const-string v6, "com.sec.android.app.voicerecorder.VoiceRecorder"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1172
    const-string v5, "location"

    const/4 v6, 0x2

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1174
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v2

    .line 1176
    .local v2, maxContentSize:I
    if-eqz p2, :cond_5

    .line 1179
    invoke-virtual {p2}, Lcom/android/mms/model/SlideshowModel;->getRemainContentsSize()I

    move-result v3

    .line 1180
    .local v3, remainSize:I
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    .line 1181
    .local v1, mSlideModel:Lcom/android/mms/model/SlideModel;
    if-nez v1, :cond_1

    .line 1204
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #mSlideModel:Lcom/android/mms/model/SlideModel;
    .end local v2           #maxContentSize:I
    .end local v3           #remainSize:I
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 1184
    .restart local v0       #intent:Landroid/content/Intent;
    .restart local v1       #mSlideModel:Lcom/android/mms/model/SlideModel;
    .restart local v2       #maxContentSize:I
    .restart local v3       #remainSize:I
    .restart local p0
    :cond_1
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v4

    .line 1186
    .local v4, slideSize:I
    if-eqz p3, :cond_4

    .line 1187
    if-lez v4, :cond_3

    .line 1188
    add-int v5, v3, v4

    if-ge v5, v2, :cond_2

    .line 1189
    const-string v5, "remain_size"

    add-int v5, v3, v4

    invoke-virtual {v0, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1202
    .end local v1           #mSlideModel:Lcom/android/mms/model/SlideModel;
    .end local v3           #remainSize:I
    .end local v4           #slideSize:I
    :goto_1
    check-cast p0, Landroid/app/Activity;

    .end local p0
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1191
    .restart local v1       #mSlideModel:Lcom/android/mms/model/SlideModel;
    .restart local v3       #remainSize:I
    .restart local v4       #slideSize:I
    .restart local p0
    :cond_2
    const-string v5, "remain_size"

    invoke-virtual {v0, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 1193
    :cond_3
    const-string v5, "remain_size"

    invoke-virtual {v0, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 1197
    :cond_4
    const-string v5, "remain_size"

    invoke-virtual {v0, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 1200
    .end local v1           #mSlideModel:Lcom/android/mms/model/SlideModel;
    .end local v3           #remainSize:I
    .end local v4           #slideSize:I
    :cond_5
    const-string v5, "remain_size"

    invoke-virtual {v0, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1
.end method

.method public static resizeImageAsync(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;ZZ)V
    .locals 9
    .parameter "context"
    .parameter "imageUri"
    .parameter "handler"
    .parameter "cb"
    .parameter "append"
    .parameter "sendMultiple"

    .prologue
    .line 1368
    new-instance v7, Lcom/android/mms/ui/MessageUtils$1;

    invoke-direct {v7, p0}, Lcom/android/mms/ui/MessageUtils$1;-><init>(Landroid/content/Context;)V

    .line 1374
    .local v7, showProgress:Ljava/lang/Runnable;
    const-wide/16 v0, 0x3e8

    invoke-virtual {p2, v7, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1376
    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lcom/android/mms/ui/MessageUtils$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/MessageUtils$2;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;ZZ)V

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 1397
    return-void
.end method

.method public static showDiscardDraftConfirmDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1401
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090058

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090059

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090080

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090081

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1408
    return-void
.end method

.method public static showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1309
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1311
    const v1, 0x7f020061

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1312
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1313
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1314
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1315
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1316
    return-void
.end method

.method public static showInputMothodConfirmDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1426
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0901a3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0901a4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0901a5

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0901a6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1433
    return-void
.end method

.method static streamToBytes(Ljava/io/InputStream;I)[B
    .locals 3
    .parameter "is"
    .parameter "streamSize"

    .prologue
    .line 2363
    new-array v0, p1, [B

    .line 2365
    .local v0, buffer:[B
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v2, p1}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2369
    :goto_0
    return-object v0

    .line 2366
    :catch_0
    move-exception v1

    .line 2367
    .local v1, e1:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static textScaleX(Landroid/widget/TextView;)V
    .locals 3
    .parameter

    .prologue
    const v2, 0x3f666666

    .line 2274
    invoke-virtual {p0}, Landroid/widget/TextView;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 2305
    :cond_0
    :goto_0
    return-void

    .line 2276
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    .line 2279
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_1

    .line 2280
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTextScaleX(F)V

    goto :goto_0

    .line 2283
    :cond_1
    const v0, 0x3f4ccccd

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextScaleX(F)V

    goto :goto_0

    .line 2288
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 2292
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTextScaleX(F)V

    goto :goto_0

    .line 2296
    :sswitch_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 2300
    const v0, 0x3f333333

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextScaleX(F)V

    goto :goto_0

    .line 2274
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080053 -> :sswitch_0
        0x7f08007e -> :sswitch_1
        0x7f08007f -> :sswitch_1
        0x7f080081 -> :sswitch_2
    .end sparse-switch
.end method

.method public static viewMmsMessageAttachment(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;Z)V
    .locals 1
    .parameter "context"
    .parameter "msgUri"
    .parameter "slideshow"
    .parameter "mmsView"

    .prologue
    .line 1648
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/mms/ui/MessageUtils;->viewMmsMessageAttachment(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;ZZ)V

    .line 1649
    return-void
.end method

.method public static viewMmsMessageAttachment(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;ZJJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1703
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 1704
    :goto_0
    if-eqz v0, :cond_1

    if-nez p3, :cond_1

    .line 1707
    :try_start_0
    invoke-static {p0, p2}, Lcom/android/mms/ui/MessageUtils;->viewSimpleSlideshow(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V
    :try_end_0
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1737
    :goto_1
    return-void

    .line 1703
    :cond_0
    invoke-virtual {p2}, Lcom/android/mms/model/SlideshowModel;->isSimple()Z

    move-result v0

    goto :goto_0

    .line 1708
    :catch_0
    move-exception v0

    .line 1710
    invoke-virtual {v0}, Landroid/drm/mobile2/OMADRMException;->printStackTrace()V

    goto :goto_1

    .line 1711
    :catch_1
    move-exception v0

    .line 1713
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1717
    :cond_1
    if-eqz p2, :cond_2

    .line 1718
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    .line 1720
    :try_start_1
    invoke-virtual {p2}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v1

    .line 1721
    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduPersister;->updateParts(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduBody;)V

    .line 1722
    invoke-virtual {p2, v1}, Lcom/android/mms/model/SlideshowModel;->sync(Lcom/google/android/mms/pdu/PduBody;)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1729
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1730
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1731
    const-string v1, "msgId"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1732
    const-string v1, "thread_id"

    invoke-virtual {v0, v1, p6, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1734
    const-string v1, "FINISH_AFTER_PLAY"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1735
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 1723
    :catch_2
    move-exception v0

    .line 1724
    const-string v0, "MessageUtils"

    const-string v1, "Unable to save message for preview"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static viewMmsMessageAttachment(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;ZZ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1666
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 1667
    :goto_0
    if-eqz v0, :cond_1

    if-nez p3, :cond_1

    .line 1670
    :try_start_0
    invoke-static {p0, p2}, Lcom/android/mms/ui/MessageUtils;->viewSimpleSlideshow(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V
    :try_end_0
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1699
    :goto_1
    return-void

    .line 1666
    :cond_0
    invoke-virtual {p2}, Lcom/android/mms/model/SlideshowModel;->isSimple()Z

    move-result v0

    goto :goto_0

    .line 1671
    :catch_0
    move-exception v0

    .line 1673
    invoke-virtual {v0}, Landroid/drm/mobile2/OMADRMException;->printStackTrace()V

    goto :goto_1

    .line 1674
    :catch_1
    move-exception v0

    .line 1676
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1680
    :cond_1
    if-eqz p2, :cond_2

    .line 1681
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    .line 1683
    :try_start_1
    invoke-virtual {p2}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v1

    .line 1684
    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduPersister;->updateParts(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduBody;)V

    .line 1685
    invoke-virtual {p2, v1}, Lcom/android/mms/model/SlideshowModel;->sync(Lcom/google/android/mms/pdu/PduBody;)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1692
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1693
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1694
    if-eqz p4, :cond_3

    .line 1695
    const-string v1, "FINISH_AFTER_PLAY"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1697
    :cond_3
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 1686
    :catch_2
    move-exception v0

    .line 1687
    const-string v0, "MessageUtils"

    const-string v1, "Unable to save message for preview"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static viewMmsMessageAttachment(Landroid/content/Context;Lcom/android/mms/data/WorkingMessage;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1740
    invoke-virtual {p1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    .line 1741
    if-nez v0, :cond_0

    .line 1742
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "msg.getSlideshow() == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1744
    :cond_0
    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->isSimple()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p2, :cond_1

    .line 1747
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, v1}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    .line 1748
    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->viewSimpleSlideshow(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V
    :try_end_0
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1764
    :goto_0
    return-void

    .line 1749
    :catch_0
    move-exception v0

    .line 1751
    invoke-virtual {v0}, Landroid/drm/mobile2/OMADRMException;->printStackTrace()V

    goto :goto_0

    .line 1752
    :catch_1
    move-exception v0

    .line 1754
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1757
    :cond_1
    invoke-virtual {p1, v2}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    move-result-object v1

    .line 1758
    if-nez v1, :cond_2

    .line 1759
    const v0, 0x7f090062

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1761
    :cond_2
    invoke-static {p0, v1, v0, p2}, Lcom/android/mms/ui/MessageUtils;->viewMmsMessageAttachment(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;Z)V

    goto :goto_0
.end method

.method public static viewSimpleSlideshow(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v6, 0x7f0901cc

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v7, "android.intent.action.VIEW"

    .line 1251
    invoke-virtual {p1}, Lcom/android/mms/model/SlideshowModel;->isSimple()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1252
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "viewSimpleSlideshow() called on a non-simple slideshow"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1255
    :cond_0
    invoke-virtual {p1, v5}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 1256
    const/4 v1, 0x0

    .line 1257
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1258
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v1

    .line 1265
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1267
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1268
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->getDrmObject()Lcom/android/mms/drm/DrmWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/drm/DrmWrapper;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 1272
    :goto_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1273
    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1274
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1275
    const-string v0, "android.intent.extra.showActionIcons"

    invoke-virtual {v2, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1276
    const-string v0, "single_mode"

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1277
    const-string v0, "fromMsg"

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1280
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1305
    :goto_2
    return-void

    .line 1259
    :cond_2
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1260
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v1

    goto :goto_0

    .line 1261
    :cond_3
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1262
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v1

    goto :goto_0

    .line 1270
    :cond_4
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1282
    :catch_0
    move-exception v0

    .line 1283
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 1287
    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1288
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1290
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1291
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->getDrmObject()Lcom/android/mms/drm/DrmWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/drm/DrmWrapper;->getContentType()Ljava/lang/String;

    move-result-object v2

    .line 1295
    :goto_3
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1298
    :try_start_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 1300
    :catch_1
    move-exception v1

    .line 1301
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 1293
    :cond_6
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v2

    goto :goto_3
.end method

.method public static writeHprofDataToFile()V
    .locals 5

    .prologue
    const-string v4, "MessageUtils"

    .line 1770
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mms_oom_hprof_data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1773
    :try_start_0
    invoke-static {v0}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V

    .line 1774
    const-string v1, "MessageUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "##### written hprof data to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1778
    :goto_0
    return-void

    .line 1775
    :catch_0
    move-exception v0

    .line 1776
    const-string v1, "MessageUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeHprofDataToFile: caught "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
