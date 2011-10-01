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

.field private static mClockFormat:Ljava/text/SimpleDateFormat;

.field private static mClockFormatString:Ljava/lang/String;

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

    .line 141
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v1, Lcom/android/mms/ui/MessageUtils;->sRecipientAddress:Ljava/util/Map;

    .line 149
    const/16 v1, 0xb

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/mms/ui/MessageUtils;->NUMERIC_CHARS_SUGAR:[C

    .line 153
    new-instance v1, Ljava/util/HashMap;

    sget-object v2, Lcom/android/mms/ui/MessageUtils;->NUMERIC_CHARS_SUGAR:[C

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v1, Lcom/android/mms/ui/MessageUtils;->numericSugarMap:Ljava/util/HashMap;

    .line 156
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->NUMERIC_CHARS_SUGAR:[C

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 157
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

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 749
    :cond_0
    sput-object v4, Lcom/android/mms/ui/MessageUtils;->mClockFormat:Ljava/text/SimpleDateFormat;

    .line 750
    sput-object v4, Lcom/android/mms/ui/MessageUtils;->mClockFormatString:Ljava/lang/String;

    return-void

    .line 149
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
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    return-void
.end method

.method public static canAddToContacts(Lcom/android/mms/data/Contact;)Z
    .locals 4
    .parameter "contact"

    .prologue
    const/4 v3, 0x0

    .line 1605
    invoke-virtual {p0}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1606
    .local v1, name:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1607
    invoke-virtual {p0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1608
    .local v0, c:C
    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isSpecialChar(C)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 1622
    .end local v0           #c:C
    :goto_0
    return v2

    .line 1612
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1613
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1614
    .restart local v0       #c:C
    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isSpecialChar(C)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    .line 1615
    goto :goto_0

    .line 1619
    .end local v0           #c:C
    :cond_1
    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->isValidMmsAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v3

    .line 1620
    goto :goto_0

    .line 1622
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
    .line 1358
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1359
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1360
    const v1, 0x7f09010a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1361
    const v1, 0x7f09010b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1362
    const v1, 0x7f090080

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1363
    const v1, 0x7f090081

    invoke-virtual {v0, v1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1364
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1365
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1366
    return-void
.end method

.method private static extractEncStr(Landroid/content/Context;Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "value"

    .prologue
    .line 1383
    if-eqz p1, :cond_0

    .line 1384
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v0

    .line 1386
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
    .line 1370
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1371
    .local v1, rawBytes:Ljava/lang/String;
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1373
    .local v0, charset:I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1374
    const-string v2, ""

    .line 1378
    :goto_0
    return-object v2

    .line 1375
    :cond_0
    if-nez v0, :cond_1

    move-object v2, v1

    .line 1376
    goto :goto_0

    .line 1378
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
    .line 861
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 862
    .local v7, addressBuf:Ljava/lang/StringBuilder;
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 863
    .local p1, recipientIds:[Ljava/lang/String;
    const/4 v0, 0x1

    .line 864
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

    .line 865
    .local v11, recipientId:Ljava/lang/String;
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->sRecipientAddress:Ljava/util/Map;

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 867
    .local v12, value:Ljava/lang/String;
    if-nez v12, :cond_6

    .line 868
    if-nez p2, :cond_0

    .line 872
    const/4 p0, 0x0

    .line 900
    .end local v11           #recipientId:Ljava/lang/String;
    .end local v12           #value:Ljava/lang/String;
    .end local p0
    :goto_1
    return-object p0

    .line 874
    .restart local v11       #recipientId:Ljava/lang/String;
    .restart local v12       #value:Ljava/lang/String;
    .restart local p0
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 875
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

    .line 876
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

    .line 878
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_6

    .line 880
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 881
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 882
    .end local v12           #value:Ljava/lang/String;
    .local v1, value:Ljava/lang/String;
    :try_start_1
    sget-object v2, Lcom/android/mms/ui/MessageUtils;->sRecipientAddress:Ljava/util/Map;

    .end local v2           #uri:Landroid/net/Uri;
    invoke-interface {v2, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 885
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 889
    .end local v0           #c:Landroid/database/Cursor;
    :goto_3
    if-nez v1, :cond_1

    move v0, v8

    .line 864
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

    .line 885
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

    .line 892
    .end local v0           #c:Landroid/database/Cursor;
    .local v1, value:Ljava/lang/String;
    .local p0, context:Landroid/content/Context;
    .restart local p1       #arr$:[Ljava/lang/String;
    :cond_1
    if-eqz v8, :cond_2

    .line 893
    const/4 v0, 0x0

    .line 897
    .end local v8           #firstItem:Z
    .local v0, firstItem:Z
    :goto_6
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 895
    .end local v0           #firstItem:Z
    .restart local v8       #firstItem:Z
    :cond_2
    const-string v0, ";"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v8

    .end local v8           #firstItem:Z
    .restart local v0       #firstItem:Z
    goto :goto_6

    .line 900
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

    .line 885
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
    .line 1794
    const-string v0, ""

    .line 1797
    if-nez p0, :cond_1

    .line 1812
    :cond_0
    :goto_0
    return-object v0

    .line 1798
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1800
    const-string v1, "<"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1801
    const-string v2, ">"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1803
    if-gez v1, :cond_3

    const/4 v1, 0x0

    .line 1804
    :goto_1
    if-gez v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1806
    :cond_2
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1803
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1808
    :catch_0
    move-exception v1

    .line 1809
    const-string v2, "MessageUtils"

    const-string v3, "Illegal name and number format!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1810
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
    .line 1391
    array-length v2, p0

    .line 1392
    .local v2, size:I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1394
    .local v0, accumulator:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1395
    aget-object v3, p0, v1

    invoke-virtual {v3}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1394
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1397
    :cond_0
    return-object v0
.end method

.method private static formatDateTime2(Landroid/content/Context;JI)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "when"
    .parameter "formatFlags"

    .prologue
    .line 674
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 675
    .local v0, result:Ljava/lang/StringBuffer;
    and-int/lit8 v1, p3, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    move v2, v1

    .line 676
    .local v2, showTime:Z
    :goto_0
    and-int/lit8 v1, p3, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    move v3, v1

    .line 677
    .local v3, showYear:Z
    :goto_1
    and-int/lit8 p3, p3, 0x10

    const/16 v1, 0x10

    if-ne p3, v1, :cond_3

    .end local p3
    const/4 p3, 0x1

    move v1, p3

    .line 678
    .local v1, showDate:Z
    :goto_2
    const p3, 0x80b00

    .line 683
    .local p3, baseFormatFlags:I
    if-eqz v2, :cond_0

    .line 684
    invoke-static {p0, p1, p2}, Lcom/android/mms/ui/MessageUtils;->getSmallTime(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object p3

    .end local p3           #baseFormatFlags:I
    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 693
    :cond_0
    if-nez v3, :cond_4

    if-nez v1, :cond_4

    .line 694
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 746
    .end local v2           #showTime:Z
    .end local p0
    .end local p1
    :goto_3
    return-object p0

    .line 675
    .end local v1           #showDate:Z
    .end local v3           #showYear:Z
    .restart local p0
    .restart local p1
    .local p3, formatFlags:I
    :cond_1
    const/4 v1, 0x0

    move v2, v1

    goto :goto_0

    .line 676
    .restart local v2       #showTime:Z
    :cond_2
    const/4 v1, 0x0

    move v3, v1

    goto :goto_1

    .line 677
    .end local p3           #formatFlags:I
    .restart local v3       #showYear:Z
    :cond_3
    const/4 p3, 0x0

    move v1, p3

    goto :goto_2

    .line 698
    .restart local v1       #showDate:Z
    :cond_4
    const/4 p3, 0x1

    if-ne p3, v2, :cond_5

    .line 699
    const-string p3, ", "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 702
    :cond_5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p3

    .line 703
    .local p3, cNow:Ljava/util/Calendar;
    invoke-virtual {p3, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 705
    const-string v2, ""

    .line 706
    .local v2, strY:Ljava/lang/String;
    const-string p2, ""

    .line 707
    .end local p1
    .local p2, strM:Ljava/lang/String;
    const-string p1, ""

    .line 709
    .local p1, strD:Ljava/lang/String;
    if-eqz v3, :cond_9

    .line 710
    const/4 v2, 0x1

    invoke-virtual {p3, v2}, Ljava/util/Calendar;->get(I)I

    .end local v2           #strY:Ljava/lang/String;
    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #strY:Ljava/lang/String;
    move-object v4, v2

    .line 712
    .end local v2           #strY:Ljava/lang/String;
    .local v4, strY:Ljava/lang/String;
    :goto_4
    if-eqz v1, :cond_8

    .line 713
    const/4 p1, 0x2

    invoke-virtual {p3, p1}, Ljava/util/Calendar;->get(I)I

    .end local p1           #strD:Ljava/lang/String;
    move-result p1

    const/high16 p2, 0x1

    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    .end local p2           #strM:Ljava/lang/String;
    move-result-object p2

    .line 714
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

    .line 717
    .end local p2           #strM:Ljava/lang/String;
    .local v2, strM:Ljava/lang/String;
    :goto_5
    const-string p1, ""

    .line 718
    .local p1, delimeter:Ljava/lang/String;
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object p2

    .line 720
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

    .line 721
    aget-char v5, p2, p1

    sparse-switch v5, :sswitch_data_0

    .line 720
    :cond_6
    :goto_7
    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    .line 723
    :sswitch_0
    if-eqz v3, :cond_6

    .line 724
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 725
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 726
    const-string p0, " "

    goto :goto_7

    .line 730
    :sswitch_1
    if-eqz v1, :cond_6

    .line 731
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 732
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 733
    const-string p0, " "

    goto :goto_7

    .line 737
    :sswitch_2
    if-eqz v1, :cond_6

    .line 738
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 739
    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 740
    const-string p0, " "

    goto :goto_7

    .line 746
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

    .line 721
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
    .line 634
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
    .line 638
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 639
    .local v3, then:Landroid/text/format/Time;
    invoke-virtual {v3, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 640
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 641
    .local v2, now:Landroid/text/format/Time;
    invoke-virtual {v2}, Landroid/text/format/Time;->setToNow()V

    .line 642
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 645
    .local v0, dNow:Ljava/util/Date;
    const v1, 0x80b00

    .line 650
    .local v1, format_flags:I
    iget v4, v3, Landroid/text/format/Time;->year:I

    iget v5, v2, Landroid/text/format/Time;->year:I

    if-eq v4, v5, :cond_1

    .line 651
    or-int/lit8 v1, v1, 0x14

    .line 663
    :goto_0
    if-eqz p3, :cond_0

    .line 664
    or-int/lit8 v1, v1, 0x11

    .line 667
    :cond_0
    invoke-static {p0, p1, p2, v1}, Lcom/android/mms/ui/MessageUtils;->formatDateTime2(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 652
    :cond_1
    iget v4, v3, Landroid/text/format/Time;->yearDay:I

    iget v5, v2, Landroid/text/format/Time;->yearDay:I

    if-eq v4, v5, :cond_2

    .line 654
    or-int/lit8 v1, v1, 0x10

    goto :goto_0

    .line 657
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

    .line 1948
    new-array v3, v7, [Ljava/lang/String;

    const-string v0, "recipient_ids"

    aput-object v0, v3, v1

    .line 1950
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1951
    const-string v1, "simple"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1952
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

    .line 1956
    if-eqz v0, :cond_1

    .line 1958
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v7, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1959
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->getRecipientsByIds(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 1961
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 1966
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    .line 1969
    :goto_0
    return-object v0

    .line 1966
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v5

    .line 1969
    goto :goto_0

    .line 1966
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

    .line 599
    if-nez p0, :cond_0

    move v2, v3

    .line 630
    :goto_0
    return v2

    .line 603
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    .line 604
    .local v0, numberOfSlides:I
    if-le v0, v4, :cond_1

    move v2, v5

    .line 605
    goto :goto_0

    .line 606
    :cond_1
    if-ne v0, v4, :cond_6

    .line 608
    invoke-virtual {p0, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    .line 609
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 610
    const/4 v2, 0x2

    goto :goto_0

    .line 613
    :cond_2
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v5

    .line 614
    goto :goto_0

    .line 617
    :cond_3
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 618
    const/4 v2, 0x3

    goto :goto_0

    .line 621
    :cond_4
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v4

    .line 622
    goto :goto_0

    .line 625
    :cond_5
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v3

    .line 626
    goto :goto_0

    .end local v1           #slide:Lcom/android/mms/model/SlideModel;
    :cond_6
    move v2, v3

    .line 630
    goto :goto_0
.end method

.method public static getAvailableStorage()J
    .locals 7

    .prologue
    .line 2064
    const-string v0, "/data"

    .line 2065
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 2066
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

    .line 2069
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method private static getErrorStringID(I)I
    .locals 1
    .parameter "errorId"

    .prologue
    const v0, 0x7f0901cf

    .line 305
    sparse-switch p0, :sswitch_data_0

    .line 346
    :goto_0
    :sswitch_0
    return v0

    .line 312
    :sswitch_1
    const v0, 0x7f0901ce

    goto :goto_0

    .line 316
    :sswitch_2
    const v0, 0x7f0901d0

    goto :goto_0

    .line 321
    :sswitch_3
    const v0, 0x7f0901d1

    goto :goto_0

    .line 325
    :sswitch_4
    const v0, 0x7f0901d2

    goto :goto_0

    .line 329
    :sswitch_5
    const v0, 0x7f0901d3

    goto :goto_0

    .line 332
    :sswitch_6
    const v0, 0x7f0901d4

    goto :goto_0

    .line 336
    :sswitch_7
    const v0, 0x7f0901d5

    goto :goto_0

    .line 305
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
    .line 1191
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->sLocalNumber:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1192
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/MmsApp;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->sLocalNumber:Ljava/lang/String;

    .line 1195
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

    .line 191
    if-nez p1, :cond_0

    .line 192
    const/4 v1, 0x0

    .line 208
    :goto_0
    return-object v1

    .line 195
    :cond_0
    const-string v1, "mms"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 196
    const/16 v1, 0x10

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 197
    .local v0, type:I
    packed-switch v0, :pswitch_data_0

    .line 204
    :pswitch_0
    const-string v1, "MessageUtils"

    const-string v2, "No details could be retrieved."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const-string v1, ""

    goto :goto_0

    .line 199
    :pswitch_1
    invoke-static {p0, p1, v3}, Lcom/android/mms/ui/MessageUtils;->getNotificationIndDetails(Landroid/content/Context;Landroid/database/Cursor;Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 202
    :pswitch_2
    invoke-static {p0, p1, p2, v3}, Lcom/android/mms/ui/MessageUtils;->getMultimediaMessageDetails(Landroid/content/Context;Landroid/database/Cursor;IZ)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 208
    .end local v0           #type:I
    :cond_1
    invoke-static {p0, p1, v3}, Lcom/android/mms/ui/MessageUtils;->getTextMessageDetails(Landroid/content/Context;Landroid/database/Cursor;Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 197
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

    .line 169
    if-nez p1, :cond_0

    .line 170
    const/4 v1, 0x0

    .line 186
    :goto_0
    return-object v1

    .line 172
    :cond_0
    const-string v1, "mms"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 173
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 174
    .local v0, type:I
    packed-switch v0, :pswitch_data_0

    .line 181
    :pswitch_0
    const-string v1, "MessageUtils"

    const-string v2, "No details could be retrieved."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const-string v1, ""

    goto :goto_0

    .line 176
    :pswitch_1
    invoke-static {p0, p1, v2}, Lcom/android/mms/ui/MessageUtils;->getNotificationIndDetails(Landroid/content/Context;Landroid/database/Cursor;Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 179
    :pswitch_2
    invoke-static {p0, p1, p2, v2}, Lcom/android/mms/ui/MessageUtils;->getMultimediaMessageDetails(Landroid/content/Context;Landroid/database/Cursor;IZ)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 186
    .end local v0           #type:I
    :cond_1
    invoke-static {p0, p1, v2}, Lcom/android/mms/ui/MessageUtils;->getTextMessageDetails(Landroid/content/Context;Landroid/database/Cursor;Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 174
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
    .line 352
    const/4 v4, 0x0

    .line 353
    .local v4, type:I
    if-eqz p3, :cond_0

    .line 354
    const/4 v4, 0x1

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    .end local v4           #type:I
    move-result v4

    .restart local v4       #type:I
    move v11, v4

    .line 358
    .end local v4           #type:I
    .local v11, type:I
    :goto_0
    const/16 v4, 0x82

    if-ne v11, v4, :cond_1

    .line 359
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->getNotificationIndDetails(Landroid/content/Context;Landroid/database/Cursor;Z)Ljava/lang/String;

    move-result-object p0

    .line 487
    .end local p0
    .end local p1
    .end local p3
    :goto_1
    return-object p0

    .line 356
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

    .line 362
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 363
    .local v4, details:Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 364
    .local v10, res:Landroid/content/res/Resources;
    const-wide/16 v5, 0x0

    .line 365
    .local v5, id:J
    if-eqz p3, :cond_6

    .line 366
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    .end local v5           #id:J
    move-result-wide v5

    .restart local v5       #id:J
    move-wide v6, v5

    .line 370
    .end local v5           #id:J
    .local v6, id:J
    :goto_2
    sget-object v5, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 374
    .local v9, uri:Landroid/net/Uri;
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v8

    check-cast v8, Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    .local v8, msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    const v5, 0x7f0900c1

    invoke-virtual {v10, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    const v5, 0x7f0900c3

    invoke-virtual {v10, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    instance-of v5, v8, Lcom/google/android/mms/pdu/RetrieveConf;

    if-eqz v5, :cond_2

    .line 387
    move-object v0, v8

    check-cast v0, Lcom/google/android/mms/pdu/RetrieveConf;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/google/android/mms/pdu/RetrieveConf;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->extractEncStr(Landroid/content/Context;Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v5

    .line 388
    .local v5, from:Ljava/lang/String;
    const/16 v12, 0xa

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 389
    const v12, 0x7f0900c5

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_7

    .end local v5           #from:Ljava/lang/String;
    :goto_3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    :cond_2
    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 396
    const v5, 0x7f0900c6

    invoke-virtual {v10, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    invoke-virtual {v8}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v5

    .line 398
    .local v5, to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v5, :cond_8

    .line 399
    invoke-static {v5}, Lcom/google/android/mms/pdu/EncodedStringValue;->concat([Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v5

    .end local v5           #to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    :goto_4
    instance-of v5, v8, Lcom/google/android/mms/pdu/SendReq;

    if-eqz v5, :cond_3

    .line 408
    move-object v0, v8

    check-cast v0, Lcom/google/android/mms/pdu/SendReq;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/google/android/mms/pdu/SendReq;->getBcc()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v5

    .line 409
    .local v5, values:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v5, :cond_3

    array-length v12, v5

    if-lez v12, :cond_3

    .line 410
    const/16 v12, 0xa

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 411
    const v12, 0x7f0900c7

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    invoke-static {v5}, Lcom/google/android/mms/pdu/EncodedStringValue;->concat([Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v5

    .end local v5           #values:[Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    :cond_3
    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 418
    const/4 v5, 0x0

    .line 419
    .local v5, msgBox:I
    if-eqz p3, :cond_9

    .line 420
    const/16 p3, 0x2

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    .end local p3
    move-result p1

    .line 424
    .end local v5           #msgBox:I
    .local p1, msgBox:I
    :goto_5
    const/16 p3, 0x3

    move/from16 v0, p1

    move/from16 v1, p3

    if-ne v0, v1, :cond_a

    .line 425
    const p3, 0x7f0900ca

    move-object v0, v10

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    move-object v0, v4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
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

    .line 436
    const/16 p3, 0xa

    move-object v0, v4

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 437
    const p3, 0x7f0900cb

    move-object v0, v10

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    move-object v0, v4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    invoke-virtual {v8}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object p3

    .line 440
    .local p3, subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz p3, :cond_c

    .line 441
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object p3

    .line 443
    .local p3, subStr:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v5

    add-int p2, p2, v5

    .line 444
    move-object v0, v4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    .end local p3           #subStr:Ljava/lang/String;
    :goto_7
    const/16 p3, 0xa

    move-object v0, v4

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 451
    const p3, 0x7f0900cd

    move-object v0, v10

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    move-object v0, v4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    invoke-virtual {v8}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getPriority()I

    move-result p3

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->getPriorityDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p3

    move-object v0, v4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    const/16 p3, 0xa

    move-object v0, v4

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 456
    const p3, 0x7f0900cc

    move-object v0, v10

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    move-object v0, v4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    move/from16 v0, p2

    add-int/lit16 v0, v0, 0x3ff

    move/from16 p3, v0

    move/from16 v0, p3

    div-int/lit16 v0, v0, 0x400

    move/from16 p3, v0

    move-object v0, v4

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 459
    const-string p3, " KB"

    move-object v0, v4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    const/16 p3, 0x4

    move/from16 v0, p1

    move/from16 v1, p3

    if-ne v0, v1, :cond_e

    .line 463
    invoke-static {v9}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    .line 464
    .end local v9           #uri:Landroid/net/Uri;
    .local v8, msgId:J
    const/16 p1, 0x0

    .line 466
    .local p1, respStatus:I
    const-string p1, "\nStatus: "

    .end local p1           #respStatus:I
    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    move-object/from16 v0, p0

    move-wide v1, v8

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->getResponseStatus(Landroid/content/Context;J)I

    move-result p1

    .line 469
    .restart local p1       #respStatus:I
    if-lez p1, :cond_d

    .line 471
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

    .line 482
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

    .line 483
    move-object/from16 v0, p0

    move-wide v1, v6

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/DeliveryReadReport;->getMmsReportText(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    .line 484
    .local p0, statusStr:Ljava/lang/String;
    if-eqz p0, :cond_5

    .line 485
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0           #statusStr:Ljava/lang/String;
    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    .line 368
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

    .line 376
    .restart local v9       #uri:Landroid/net/Uri;
    :catch_0
    move-exception p1

    .line 377
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

    .line 378
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .end local p0           #context:Landroid/content/Context;
    const p1, 0x7f0900bf

    invoke-virtual/range {p0 .. p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p1           #e:Lcom/google/android/mms/MmsException;
    move-result-object p0

    goto/16 :goto_1

    .line 390
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

    .line 402
    .local v5, to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_8
    const-string v5, "MessageUtils"

    .end local v5           #to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    const-string v12, "recipient list is empty!"

    invoke-static {v5, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 422
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

    .line 426
    :cond_a
    const/16 p3, 0x1

    move/from16 v0, p1

    move/from16 v1, p3

    if-ne v0, v1, :cond_b

    .line 427
    const p3, 0x7f0900c9

    move-object v0, v10

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    move-object v0, v4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 429
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

    .line 446
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

    .line 474
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

    .line 476
    .local v8, msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    .restart local v9       #uri:Landroid/net/Uri;
    .local p1, msgBox:I
    :cond_e
    const/16 p3, 0x2

    move/from16 v0, p1

    move/from16 v1, p3

    if-ne v0, v1, :cond_4

    .line 478
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
    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    .local v1, details:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 215
    .local v4, res:Landroid/content/res/Resources;
    const-wide/16 v2, 0x0

    .line 216
    .local v2, id:J
    if-eqz p2, :cond_0

    .line 217
    const/4 p2, 0x0

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    .end local p2
    move-result-wide p1

    .line 221
    .end local v2           #id:J
    .local p1, id:J
    :goto_0
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p2

    .line 225
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

    .line 233
    .local p2, nInd:Lcom/google/android/mms/pdu/NotificationInd;
    const p1, 0x7f0900c1

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    const p1, 0x7f0900c4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/NotificationInd;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/mms/ui/MessageUtils;->extractEncStr(Landroid/content/Context;Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object p1

    .line 238
    .local p1, from:Ljava/lang/String;
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 239
    const v2, 0x7f0900c5

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .end local p1           #from:Ljava/lang/String;
    :goto_1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    const/16 p1, 0xa

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 245
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

    .line 251
    const/16 p1, 0xa

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 252
    const p1, 0x7f0900cb

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/NotificationInd;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object p1

    .line 255
    .local p1, subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz p1, :cond_2

    .line 256
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object p1

    .end local p1           #subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    :goto_2
    const/16 p1, 0xa

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 271
    const p1, 0x7f0900cc

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/NotificationInd;->getMessageSize()J

    move-result-wide p1

    const-wide/16 v2, 0x3ff

    add-long/2addr p1, v2

    const-wide/16 v2, 0x400

    div-long/2addr p1, v2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    const p1, 0x7f09001d

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .end local p0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .end local v1           #details:Ljava/lang/StringBuilder;
    .end local p2           #nInd:Lcom/google/android/mms/pdu/NotificationInd;
    :goto_3
    return-object p0

    .line 219
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

    .line 227
    .end local p1           #id:J
    .local p2, uri:Landroid/net/Uri;
    :catch_0
    move-exception p1

    .line 228
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

    .line 229
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .end local p0
    const p1, 0x7f0900bf

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p1           #e:Lcom/google/android/mms/MmsException;
    move-result-object p0

    goto :goto_3

    .line 240
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

    .line 258
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
    .line 586
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 587
    .local v0, res:Landroid/content/res/Resources;
    packed-switch p1, :pswitch_data_0

    .line 594
    :pswitch_0
    const v1, 0x7f0900cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 589
    :pswitch_1
    const v1, 0x7f0900ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 591
    :pswitch_2
    const v1, 0x7f0900d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 587
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
    .line 840
    sget-object v2, Lcom/android/mms/ui/MessageUtils;->sRecipientAddress:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 841
    .local v1, value:Ljava/lang/String;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 856
    :goto_0
    return-object v2

    .line 844
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 845
    invoke-static {p0, p1, p2}, Lcom/android/mms/ui/MessageUtils;->extractIdsToAddresses(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 847
    .local v0, addressBuf:Ljava/lang/StringBuilder;
    if-nez v0, :cond_1

    .line 849
    const-string v2, ""

    goto :goto_0

    .line 851
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 855
    .end local v0           #addressBuf:Ljava/lang/StringBuilder;
    :goto_1
    sget-object v2, Lcom/android/mms/ui/MessageUtils;->sRecipientAddress:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    .line 856
    goto :goto_0

    .line 853
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

    .line 286
    :try_start_0
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v1

    check-cast v1, Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    .local v1, msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    instance-of v3, v1, Lcom/google/android/mms/pdu/SendReq;

    if-eqz v3, :cond_0

    .line 294
    check-cast v1, Lcom/google/android/mms/pdu/SendReq;

    .end local v1           #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/SendReq;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v2

    .line 295
    .local v2, values:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    .line 297
    invoke-static {v2}, Lcom/google/android/mms/pdu/EncodedStringValue;->concat([Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v3

    .line 300
    .end local v2           #values:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :goto_0
    return-object v3

    .line 288
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 289
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

    .line 290
    goto :goto_0

    .end local v0           #e:Lcom/google/android/mms/MmsException;
    :cond_0
    move-object v3, v6

    .line 300
    goto :goto_0
.end method

.method public static getResponseStatus(Landroid/content/Context;J)I
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 2075
    const/4 v7, 0x0

    .line 2076
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

    .line 2079
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2080
    const-string v1, "resp_st"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 2083
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2085
    if-eqz v1, :cond_0

    .line 2086
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

    .line 2088
    :cond_0
    return v1

    .line 2083
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_1
    move v1, v7

    goto :goto_0
.end method

.method private static getSmallTime(Landroid/content/Context;J)Ljava/lang/CharSequence;
    .locals 12
    .parameter "context"
    .parameter "when"

    .prologue
    .line 752
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v6

    .line 755
    .local v6, b24:Z
    const v4, 0xef00

    .line 756
    .local v4, MAGIC1:C
    const v5, 0xef01

    .line 757
    .local v5, MAGIC2:C
    const/4 v2, 0x0

    .line 758
    .local v2, AM_PM_STYLE_NORMAL:I
    const/4 v3, 0x1

    .line 759
    .local v3, AM_PM_STYLE_SMALL:I
    const/4 v1, 0x2

    .line 760
    .local v1, AM_PM_STYLE_GONE:I
    const/4 v0, 0x0

    .line 762
    .local v0, AM_PM_STYLE:I
    if-eqz v6, :cond_1

    .line 763
    const v8, 0x1040076

    .line 769
    .local v8, res:I
    :goto_0
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 772
    .local v7, format:Ljava/lang/String;
    sget-object v11, Lcom/android/mms/ui/MessageUtils;->mClockFormatString:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    if-nez v6, :cond_2

    .line 804
    :cond_0
    new-instance v10, Ljava/text/SimpleDateFormat;

    invoke-direct {v10, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .local v10, sdf:Ljava/text/SimpleDateFormat;
    sput-object v10, Lcom/android/mms/ui/MessageUtils;->mClockFormat:Ljava/text/SimpleDateFormat;

    .line 805
    sput-object v7, Lcom/android/mms/ui/MessageUtils;->mClockFormatString:Ljava/lang/String;

    .line 809
    :goto_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 831
    .local v9, result:Ljava/lang/String;
    return-object v9

    .line 765
    .end local v7           #format:Ljava/lang/String;
    .end local v8           #res:I
    .end local v9           #result:Ljava/lang/String;
    .end local v10           #sdf:Ljava/text/SimpleDateFormat;
    :cond_1
    const v8, 0x1040075

    .restart local v8       #res:I
    goto :goto_0

    .line 807
    .restart local v7       #format:Ljava/lang/String;
    :cond_2
    sget-object v10, Lcom/android/mms/ui/MessageUtils;->mClockFormat:Ljava/text/SimpleDateFormat;

    .restart local v10       #sdf:Ljava/text/SimpleDateFormat;
    goto :goto_1
.end method

.method private static getTextMessageDetails(Landroid/content/Context;Landroid/database/Cursor;Z)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "cursor"
    .parameter "isView"

    .prologue
    .line 491
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 492
    .local v2, details:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 495
    .local v3, res:Landroid/content/res/Resources;
    const v0, 0x7f0900c1

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    const v0, 0x7f0900c2

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 500
    const/4 v0, 0x0

    .line 501
    .local v0, smsType:I
    if-eqz p2, :cond_2

    .line 502
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    .end local v0           #smsType:I
    move-result v0

    .restart local v0       #smsType:I
    move v4, v0

    .line 506
    .end local v0           #smsType:I
    .local v4, smsType:I
    :goto_0
    invoke-static {v4}, Landroid/provider/Telephony$Sms;->isOutgoingFolder(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 507
    const v0, 0x7f0900c6

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    :goto_1
    if-eqz p2, :cond_4

    .line 512
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    :goto_2
    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 520
    const v0, 0x7f0900cd

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    const/4 v0, 0x0

    .line 522
    .local v0, priority:I
    if-eqz p2, :cond_5

    .line 523
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .end local v0           #priority:I
    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 527
    .restart local v0       #priority:I
    :goto_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 528
    const v0, 0x7f0900ce

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local v0           #priority:I
    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    :goto_4
    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 534
    const/4 v0, 0x3

    if-ne v4, v0, :cond_7

    .line 535
    const v0, 0x7f0900ca

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    :goto_5
    const-wide/16 v0, 0x0

    .line 542
    .local v0, date:J
    if-eqz p2, :cond_9

    .line 543
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    .end local v0           #date:J
    move-result-wide v0

    .line 547
    .restart local v0       #date:J
    :goto_6
    const/4 v5, 0x1

    invoke-static {p0, v0, v1, v5}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v0

    .end local v0           #date:J
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    invoke-static {v4}, Landroid/provider/Telephony$Sms;->isOutgoingFolder(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 551
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 552
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "pref_key_sms_delivery_reports"

    const/4 v4, 0x0

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .end local v4           #smsType:I
    move-result v0

    .line 554
    .local v0, DeliveryReport:Z
    if-eqz v0, :cond_0

    .line 556
    if-eqz p2, :cond_a

    .line 557
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    .end local v0           #DeliveryReport:Z
    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/DeliveryReadReport;->getSmsDeliveryReportText(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    .line 562
    .local p0, deliveryStatus:Ljava/lang/String;
    :goto_7
    if-eqz p0, :cond_0

    .line 563
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0           #deliveryStatus:Ljava/lang/String;
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    :cond_0
    const/4 p0, 0x0

    .line 569
    .local p0, errorCode:I
    if-eqz p2, :cond_b

    .line 570
    const/4 p0, 0x4

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    .end local p0           #errorCode:I
    move-result p0

    .line 575
    .restart local p0       #errorCode:I
    :goto_8
    if-eqz p0, :cond_1

    .line 576
    const/16 p1, 0xa

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .end local p1
    move-result-object p1

    const p2, 0x7f0900d2

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p2
    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 582
    .end local p0           #errorCode:I
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 504
    .local v0, smsType:I
    .local p0, context:Landroid/content/Context;
    .restart local p1
    .restart local p2
    :cond_2
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    .end local v0           #smsType:I
    move-result v0

    .restart local v0       #smsType:I
    move v4, v0

    .end local v0           #smsType:I
    .restart local v4       #smsType:I
    goto/16 :goto_0

    .line 509
    :cond_3
    const v0, 0x7f0900c5

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 514
    :cond_4
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 525
    .local v0, priority:I
    :cond_5
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .end local v0           #priority:I
    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .restart local v0       #priority:I
    goto/16 :goto_3

    .line 530
    :cond_6
    const v0, 0x7f0900cf

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local v0           #priority:I
    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 536
    :cond_7
    const/4 v0, 0x1

    if-ne v4, v0, :cond_8

    .line 537
    const v0, 0x7f0900c9

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 539
    :cond_8
    const v0, 0x7f0900c8

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 545
    .local v0, date:J
    :cond_9
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    .end local v0           #date:J
    move-result-wide v0

    .restart local v0       #date:J
    goto/16 :goto_6

    .line 559
    .end local v4           #smsType:I
    .local v0, DeliveryReport:Z
    :cond_a
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    .end local v0           #DeliveryReport:Z
    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/DeliveryReadReport;->getSmsDeliveryReportText(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    .local p0, deliveryStatus:Ljava/lang/String;
    goto/16 :goto_7

    .line 572
    .local p0, errorCode:I
    :cond_b
    const/16 p0, 0xa

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    .end local p0           #errorCode:I
    move-result p0

    .restart local p0       #errorCode:I
    goto/16 :goto_8
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

    .line 1909
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 1910
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1944
    :goto_0
    return-object v0

    .line 1912
    :cond_0
    const-string v0, ""

    .line 1913
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1917
    :try_start_0
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v0

    check-cast v0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1924
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1925
    instance-of v2, v0, Lcom/google/android/mms/pdu/RetrieveConf;

    if-eqz v2, :cond_2

    .line 1927
    check-cast v0, Lcom/google/android/mms/pdu/RetrieveConf;

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/RetrieveConf;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->extractEncStr(Landroid/content/Context;Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v0

    .line 1928
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    move-object v0, v1

    .line 1944
    goto :goto_0

    .line 1919
    :catch_0
    move-exception v0

    .line 1920
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

    .line 1921
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 1933
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    .line 1934
    if-eqz v0, :cond_3

    .line 1935
    const/4 v2, 0x0

    :goto_2
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 1936
    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1935
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1940
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

    .line 1218
    const-string v0, "m_type = 132 AND seen = 0 AND rr = 128"

    .line 1222
    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    if-eqz v1, :cond_4

    .line 1223
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

    .line 1226
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

    .line 1230
    if-nez v0, :cond_0

    .line 1283
    :goto_1
    return-void

    .line 1234
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1236
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 1237
    if-eqz p4, :cond_1

    .line 1238
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1248
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1243
    :cond_2
    :goto_2
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1244
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 1245
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2}, Lcom/android/mms/util/AddressUtils;->getFrom(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1248
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1251
    new-instance v0, Lcom/android/mms/ui/MessageUtils$3;

    invoke-direct {v0, v1, p0, p3, p4}, Lcom/android/mms/ui/MessageUtils$3;-><init>(Ljava/util/Map;Landroid/content/Context;ILjava/lang/Runnable;)V

    .line 1264
    new-instance v1, Lcom/android/mms/ui/MessageUtils$4;

    invoke-direct {v1, p4}, Lcom/android/mms/ui/MessageUtils$4;-><init>(Ljava/lang/Runnable;)V

    .line 1272
    new-instance v2, Lcom/android/mms/ui/MessageUtils$5;

    invoke-direct {v2, p4}, Lcom/android/mms/ui/MessageUtils$5;-><init>(Ljava/lang/Runnable;)V

    .line 1280
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

    .line 1290
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 1291
    if-eqz p4, :cond_0

    .line 1292
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    .line 1353
    :cond_0
    :goto_0
    return-void

    .line 1297
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

    .line 1302
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

    .line 1306
    if-eqz v0, :cond_2

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1307
    :cond_2
    if-eqz p4, :cond_3

    .line 1308
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1317
    :cond_3
    if-eqz v0, :cond_0

    .line 1318
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1312
    :cond_4
    :try_start_1
    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1313
    invoke-static {p0, v1}, Lcom/android/mms/util/AddressUtils;->getFrom(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 1314
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 1317
    if-eqz v0, :cond_5

    .line 1318
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1321
    :cond_5
    new-instance v0, Lcom/android/mms/ui/MessageUtils$6;

    move-object v1, p0

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/MessageUtils$6;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    .line 1332
    new-instance v1, Lcom/android/mms/ui/MessageUtils$7;

    invoke-direct {v1, p4}, Lcom/android/mms/ui/MessageUtils$7;-><init>(Ljava/lang/Runnable;)V

    .line 1341
    new-instance v2, Lcom/android/mms/ui/MessageUtils$8;

    invoke-direct {v2, p4}, Lcom/android/mms/ui/MessageUtils$8;-><init>(Ljava/lang/Runnable;)V

    .line 1350
    invoke-static {p0, v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->confirmReadReportDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0

    .line 1317
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_6

    .line 1318
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

    .line 1997
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

    .line 2000
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v4

    .line 2003
    :goto_0
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 2004
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 2009
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

    .line 2024
    :goto_1
    return v0

    .line 2013
    :cond_2
    invoke-static {v2}, Lcom/android/internal/telephony/GsmAlphabet;->convertEachCharacter(C)C

    move-result v2

    .line 2014
    const v3, 0xfeff

    if-ne v3, v2, :cond_3

    .line 2017
    const/4 v0, 0x1

    goto :goto_1

    .line 2020
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2003
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2022
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2023
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

    .line 2024
    goto :goto_1
.end method

.method public static isAlias(Ljava/lang/String;)Z
    .locals 3
    .parameter "string"

    .prologue
    const/4 v2, 0x0

    .line 1535
    invoke-static {}, Lcom/android/mms/MmsConfig;->isAliasEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 1561
    :goto_0
    return v1

    .line 1539
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    .line 1540
    goto :goto_0

    .line 1547
    :cond_1
    invoke-static {p0}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    .line 1548
    goto :goto_0

    .line 1551
    :cond_2
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isAlphaNumeric(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    .line 1552
    goto :goto_0

    .line 1555
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1557
    .local v0, len:I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAliasMinChars()I

    move-result v1

    if-lt v0, v1, :cond_4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getAliasMaxChars()I

    move-result v1

    if-le v0, v1, :cond_5

    :cond_4
    move v1, v2

    .line 1558
    goto :goto_0

    .line 1561
    :cond_5
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isAlphaNumeric(Ljava/lang/String;)Z
    .locals 4
    .parameter "s"

    .prologue
    .line 1584
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 1585
    .local v1, chars:[C
    const/4 v2, 0x0

    .local v2, x:I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_4

    .line 1586
    aget-char v0, v1, v2

    .line 1588
    .local v0, c:C
    const/16 v3, 0x61

    if-lt v0, v3, :cond_1

    const/16 v3, 0x7a

    if-gt v0, v3, :cond_1

    .line 1585
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1591
    :cond_1
    const/16 v3, 0x41

    if-lt v0, v3, :cond_2

    const/16 v3, 0x5a

    if-le v0, v3, :cond_0

    .line 1594
    :cond_2
    const/16 v3, 0x30

    if-lt v0, v3, :cond_3

    const/16 v3, 0x39

    if-le v0, v3, :cond_0

    .line 1598
    :cond_3
    const/4 v3, 0x0

    .line 1600
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

    .line 2127
    const/4 v1, 0x0

    .line 2128
    .local v1, is:Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 2131
    .local v3, streamSize:I
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2133
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 2138
    :goto_0
    :try_start_2
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-static {v1, v3}, Lcom/android/mms/ui/MessageUtils;->streamToBytes(Ljava/io/InputStream;I)[B

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2139
    .end local v1           #is:Ljava/io/InputStream;
    .local v2, is:Ljava/io/InputStream;
    :try_start_3
    invoke-static {v2}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v4

    sput-object v4, Lcom/android/mms/ui/MessageUtils;->mMovie:Landroid/graphics/Movie;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_5

    .line 2145
    if-eqz v2, :cond_4

    .line 2147
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    move-object v1, v2

    .line 2154
    .end local v2           #is:Ljava/io/InputStream;
    .restart local v1       #is:Ljava/io/InputStream;
    :cond_0
    :goto_1
    sget-object v4, Lcom/android/mms/ui/MessageUtils;->mMovie:Landroid/graphics/Movie;

    if-nez v4, :cond_2

    move v4, v5

    .line 2156
    :goto_2
    return v4

    .line 2134
    :catch_0
    move-exception v0

    .line 2136
    .local v0, e:Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 2141
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 2143
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2145
    if-eqz v1, :cond_0

    .line 2147
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_1

    .line 2148
    :catch_2
    move-exception v0

    .line 2150
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 2148
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #is:Ljava/io/InputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    :catch_3
    move-exception v0

    .line 2150
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .line 2151
    .end local v2           #is:Ljava/io/InputStream;
    .restart local v1       #is:Ljava/io/InputStream;
    goto :goto_1

    .line 2145
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_4
    if-eqz v1, :cond_1

    .line 2147
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 2151
    :cond_1
    :goto_5
    throw v4

    .line 2148
    :catch_4
    move-exception v0

    .line 2150
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 2156
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

    .line 2145
    .end local v1           #is:Ljava/io/InputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2           #is:Ljava/io/InputStream;
    .restart local v1       #is:Ljava/io/InputStream;
    goto :goto_4

    .line 2141
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

    .line 2093
    .line 2095
    if-eqz p0, :cond_4

    .line 2096
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    move v1, v4

    .line 2099
    :goto_1
    if-ge v1, v0, :cond_3

    .line 2101
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 2106
    const/16 v3, 0x3130

    if-ge v3, v2, :cond_0

    const/16 v3, 0x318d

    if-lt v2, v3, :cond_1

    :cond_0
    const v3, 0xabff

    if-ge v3, v2, :cond_2

    const v3, 0xd7a4

    if-ge v2, v3, :cond_2

    .line 2107
    :cond_1
    const/4 v0, 0x1

    .line 2111
    :goto_2
    return v0

    .line 2099
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v0, v4

    .line 2111
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

    .line 1199
    if-nez p0, :cond_0

    move v0, v1

    .line 1211
    :goto_0
    return v0

    .line 1207
    :cond_0
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    move v0, v1

    .line 1208
    goto :goto_0

    .line 1211
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

    .line 1822
    const-string v0, "mms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1823
    new-array v2, v2, [Ljava/lang/String;

    const-string v0, "locked"

    aput-object v4, v2, v1

    .line 1826
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p3

    move-object v4, v3

    move-object v5, v3

    .line 1827
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1829
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1830
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 1834
    if-eqz v0, :cond_4

    .line 1835
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-wide v0, v1

    .line 1855
    :goto_0
    return-wide v0

    .line 1831
    :catch_0
    move-exception v1

    .line 1834
    if-eqz v0, :cond_3

    .line 1835
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-wide v0, v6

    goto :goto_0

    .line 1834
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_0

    .line 1835
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v1

    .line 1839
    :cond_1
    new-array v2, v2, [Ljava/lang/String;

    const-string v0, "locked"

    aput-object v4, v2, v1

    .line 1842
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p3

    move-object v4, v3

    move-object v5, v3

    .line 1843
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1845
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1846
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v1

    .line 1850
    if-eqz v0, :cond_4

    .line 1851
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-wide v0, v1

    goto :goto_0

    .line 1847
    :catch_1
    move-exception v1

    .line 1850
    if-eqz v0, :cond_3

    .line 1851
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-wide v0, v6

    goto :goto_0

    .line 1850
    :catchall_1
    move-exception v1

    if-eqz v0, :cond_2

    .line 1851
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

    .line 1772
    const-string v0, " <"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1773
    const-string v1, ">"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1774
    const/4 v2, -0x1

    .line 1776
    if-ne v0, v2, :cond_0

    move v0, v3

    .line 1782
    :goto_0
    return v0

    .line 1779
    :cond_0
    if-eq v1, v2, :cond_1

    if-le v1, v0, :cond_2

    .line 1780
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v3

    .line 1782
    goto :goto_0
.end method

.method public static isNumberCanAddToContact(Ljava/lang/String;)Z
    .locals 3
    .parameter "number"

    .prologue
    const/4 v2, 0x0

    .line 1626
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 1637
    :goto_0
    return v1

    .line 1629
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1630
    .local v0, c:C
    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isSpecialChar(C)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    .line 1631
    goto :goto_0

    .line 1634
    :cond_1
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isValidMmsAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    .line 1635
    goto :goto_0

    .line 1637
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isSpecialChar(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 1641
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
    .line 1678
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->parseMmsAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1679
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

    .line 1722
    invoke-static {p0}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 1726
    :goto_0
    return v1

    .line 1725
    :cond_0
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->parseSmsAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1726
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

    .line 1690
    invoke-static {p0}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p0

    .line 1715
    :goto_0
    return-object v1

    .line 1694
    :cond_0
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isNameAndNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1695
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->extractNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1699
    :cond_1
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->parsePhoneNumberForMms(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1701
    .local v0, retVal:Ljava/lang/String;
    const-string v1, ""

    if-ne v0, v1, :cond_2

    move-object v1, v2

    .line 1702
    goto :goto_0

    .line 1705
    :cond_2
    if-eqz v0, :cond_3

    move-object v1, v0

    .line 1706
    goto :goto_0

    .line 1710
    :cond_3
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v1, p0

    .line 1711
    goto :goto_0

    :cond_4
    move-object v1, v2

    .line 1715
    goto :goto_0
.end method

.method private static parsePhoneNumberForMms(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "address"

    .prologue
    .line 1650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1651
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1653
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 1654
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1657
    .local v1, c:C
    const/16 v4, 0x2b

    if-ne v1, v4, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 1658
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1653
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1662
    :cond_1
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1663
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1667
    :cond_2
    sget-object v4, Lcom/android/mms/ui/MessageUtils;->numericSugarMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 1668
    const/4 v4, 0x0

    .line 1671
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

    .line 1736
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isNameAndNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1737
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->extractNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1741
    :cond_0
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->parsePhoneNumberForMms(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1743
    .local v0, retVal:Ljava/lang/String;
    const-string v1, ""

    if-ne v0, v1, :cond_1

    move-object v1, v2

    .line 1757
    :goto_0
    return-object v1

    .line 1747
    :cond_1
    if-eqz v0, :cond_2

    move-object v1, v0

    .line 1748
    goto :goto_0

    .line 1752
    :cond_2
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, p0

    .line 1753
    goto :goto_0

    :cond_3
    move-object v1, v2

    .line 1757
    goto :goto_0
.end method

.method public static pickAttachmentFile(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter "act"
    .parameter "folderPath"
    .parameter "contentType"
    .parameter "requestCode"

    .prologue
    .line 985
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 986
    .local v0, myFilesIntent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 987
    const-string v1, "com.sec.android.app.myfiles"

    const-string v2, "com.sec.android.app.myfiles.fileselector.SingleSelectorActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 988
    const-string v1, "com.sec.android.app.myfiles.PICK_DATA "

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 989
    const-string v1, "FOLDERPATH"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 990
    const-string v1, "CONTENT_TYPE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 992
    invoke-virtual {p0, v0, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 994
    :cond_0
    return-void
.end method

.method public static pickAttachmentImageOrVideoFile(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 2
    .parameter "act"
    .parameter "contentType"
    .parameter "requestCode"

    .prologue
    .line 997
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 998
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 999
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1000
    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1002
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

    .line 916
    instance-of v5, p0, Landroid/app/Activity;

    if-eqz v5, :cond_0

    .line 919
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 925
    .local v0, intent:Landroid/content/Intent;
    const-string v5, "com.sec.android.app.voicerecorder"

    const-string v6, "com.sec.android.app.voicerecorder.VoiceRecorder"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 926
    const-string v5, "location"

    const/4 v6, 0x2

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 928
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v2

    .line 930
    .local v2, maxContentSize:I
    if-eqz p2, :cond_5

    .line 933
    invoke-virtual {p2}, Lcom/android/mms/model/SlideshowModel;->getRemainContentsSize()I

    move-result v3

    .line 934
    .local v3, remainSize:I
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    .line 935
    .local v1, mSlideModel:Lcom/android/mms/model/SlideModel;
    if-nez v1, :cond_1

    .line 958
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #mSlideModel:Lcom/android/mms/model/SlideModel;
    .end local v2           #maxContentSize:I
    .end local v3           #remainSize:I
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 938
    .restart local v0       #intent:Landroid/content/Intent;
    .restart local v1       #mSlideModel:Lcom/android/mms/model/SlideModel;
    .restart local v2       #maxContentSize:I
    .restart local v3       #remainSize:I
    .restart local p0
    :cond_1
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v4

    .line 940
    .local v4, slideSize:I
    if-eqz p3, :cond_4

    .line 941
    if-lez v4, :cond_3

    .line 942
    add-int v5, v3, v4

    if-ge v5, v2, :cond_2

    .line 943
    const-string v5, "remain_size"

    add-int v5, v3, v4

    invoke-virtual {v0, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 956
    .end local v1           #mSlideModel:Lcom/android/mms/model/SlideModel;
    .end local v3           #remainSize:I
    .end local v4           #slideSize:I
    :goto_1
    check-cast p0, Landroid/app/Activity;

    .end local p0
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 945
    .restart local v1       #mSlideModel:Lcom/android/mms/model/SlideModel;
    .restart local v3       #remainSize:I
    .restart local v4       #slideSize:I
    .restart local p0
    :cond_2
    const-string v5, "remain_size"

    invoke-virtual {v0, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 947
    :cond_3
    const-string v5, "remain_size"

    invoke-virtual {v0, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 951
    :cond_4
    const-string v5, "remain_size"

    invoke-virtual {v0, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 954
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
    .line 1122
    new-instance v7, Lcom/android/mms/ui/MessageUtils$1;

    invoke-direct {v7, p0}, Lcom/android/mms/ui/MessageUtils$1;-><init>(Landroid/content/Context;)V

    .line 1128
    .local v7, showProgress:Ljava/lang/Runnable;
    const-wide/16 v0, 0x3e8

    invoke-virtual {p2, v7, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1130
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

    .line 1151
    return-void
.end method

.method public static showDiscardDraftConfirmDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 1155
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

    .line 1162
    return-void
.end method

.method public static showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "title"
    .parameter "message"

    .prologue
    .line 1063
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1065
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f02005d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1066
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1067
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1068
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1069
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1070
    return-void
.end method

.method public static showInputMothodConfirmDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .parameter "context"
    .parameter "listener_send"

    .prologue
    .line 1180
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

    .line 1187
    return-void
.end method

.method static streamToBytes(Ljava/io/InputStream;I)[B
    .locals 3
    .parameter "is"
    .parameter "streamSize"

    .prologue
    .line 2117
    new-array v0, p1, [B

    .line 2119
    .local v0, buffer:[B
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v2, p1}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2123
    :goto_0
    return-object v0

    .line 2120
    :catch_0
    move-exception v1

    .line 2121
    .local v1, e1:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static textScaleX(Landroid/widget/TextView;)V
    .locals 3
    .parameter

    .prologue
    const v2, 0x3f666666

    .line 2028
    invoke-virtual {p0}, Landroid/widget/TextView;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 2059
    :cond_0
    :goto_0
    return-void

    .line 2030
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    .line 2033
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_1

    .line 2034
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTextScaleX(F)V

    goto :goto_0

    .line 2037
    :cond_1
    const v0, 0x3f4ccccd

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextScaleX(F)V

    goto :goto_0

    .line 2042
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 2046
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTextScaleX(F)V

    goto :goto_0

    .line 2050
    :sswitch_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 2054
    const v0, 0x3f333333

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextScaleX(F)V

    goto :goto_0

    .line 2028
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f08002e -> :sswitch_0
        0x7f080059 -> :sswitch_1
        0x7f08005a -> :sswitch_1
        0x7f08005c -> :sswitch_2
    .end sparse-switch
.end method

.method public static viewMmsMessageAttachment(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;Z)V
    .locals 1
    .parameter "context"
    .parameter "msgUri"
    .parameter "slideshow"
    .parameter "mmsView"

    .prologue
    .line 1402
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/mms/ui/MessageUtils;->viewMmsMessageAttachment(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;ZZ)V

    .line 1403
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
    .line 1457
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 1458
    :goto_0
    if-eqz v0, :cond_1

    if-nez p3, :cond_1

    .line 1461
    :try_start_0
    invoke-static {p0, p2}, Lcom/android/mms/ui/MessageUtils;->viewSimpleSlideshow(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V
    :try_end_0
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1491
    :goto_1
    return-void

    .line 1457
    :cond_0
    invoke-virtual {p2}, Lcom/android/mms/model/SlideshowModel;->isSimple()Z

    move-result v0

    goto :goto_0

    .line 1462
    :catch_0
    move-exception v0

    .line 1464
    invoke-virtual {v0}, Landroid/drm/mobile2/OMADRMException;->printStackTrace()V

    goto :goto_1

    .line 1465
    :catch_1
    move-exception v0

    .line 1467
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1471
    :cond_1
    if-eqz p2, :cond_2

    .line 1472
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    .line 1474
    :try_start_1
    invoke-virtual {p2}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v1

    .line 1475
    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduPersister;->updateParts(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduBody;)V

    .line 1476
    invoke-virtual {p2, v1}, Lcom/android/mms/model/SlideshowModel;->sync(Lcom/google/android/mms/pdu/PduBody;)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1483
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1484
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1485
    const-string v1, "msgId"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1486
    const-string v1, "thread_id"

    invoke-virtual {v0, v1, p6, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1488
    const-string v1, "FINISH_AFTER_PLAY"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1489
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 1477
    :catch_2
    move-exception v0

    .line 1478
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
    .line 1420
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 1421
    :goto_0
    if-eqz v0, :cond_1

    if-nez p3, :cond_1

    .line 1424
    :try_start_0
    invoke-static {p0, p2}, Lcom/android/mms/ui/MessageUtils;->viewSimpleSlideshow(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V
    :try_end_0
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1453
    :goto_1
    return-void

    .line 1420
    :cond_0
    invoke-virtual {p2}, Lcom/android/mms/model/SlideshowModel;->isSimple()Z

    move-result v0

    goto :goto_0

    .line 1425
    :catch_0
    move-exception v0

    .line 1427
    invoke-virtual {v0}, Landroid/drm/mobile2/OMADRMException;->printStackTrace()V

    goto :goto_1

    .line 1428
    :catch_1
    move-exception v0

    .line 1430
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1434
    :cond_1
    if-eqz p2, :cond_2

    .line 1435
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    .line 1437
    :try_start_1
    invoke-virtual {p2}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v1

    .line 1438
    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduPersister;->updateParts(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduBody;)V

    .line 1439
    invoke-virtual {p2, v1}, Lcom/android/mms/model/SlideshowModel;->sync(Lcom/google/android/mms/pdu/PduBody;)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1446
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1447
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1448
    if-eqz p4, :cond_3

    .line 1449
    const-string v1, "FINISH_AFTER_PLAY"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1451
    :cond_3
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 1440
    :catch_2
    move-exception v0

    .line 1441
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

    .line 1494
    invoke-virtual {p1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    .line 1495
    if-nez v0, :cond_0

    .line 1496
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "msg.getSlideshow() == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1498
    :cond_0
    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->isSimple()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p2, :cond_1

    .line 1501
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, v1}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    .line 1502
    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->viewSimpleSlideshow(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V
    :try_end_0
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1518
    :goto_0
    return-void

    .line 1503
    :catch_0
    move-exception v0

    .line 1505
    invoke-virtual {v0}, Landroid/drm/mobile2/OMADRMException;->printStackTrace()V

    goto :goto_0

    .line 1506
    :catch_1
    move-exception v0

    .line 1508
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1511
    :cond_1
    invoke-virtual {p1, v2}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    move-result-object v1

    .line 1512
    if-nez v1, :cond_2

    .line 1513
    const v0, 0x7f090062

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1515
    :cond_2
    invoke-static {p0, v1, v0, p2}, Lcom/android/mms/ui/MessageUtils;->viewMmsMessageAttachment(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;Z)V

    goto :goto_0
.end method

.method public static viewSimpleSlideshow(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V
    .locals 10
    .parameter "context"
    .parameter "slideshow"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v8, 0x7f0901cc

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v9, "android.intent.action.VIEW"

    .line 1005
    invoke-virtual {p1}, Lcom/android/mms/model/SlideshowModel;->isSimple()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1006
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "viewSimpleSlideshow() called on a non-simple slideshow"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1009
    :cond_0
    invoke-virtual {p1, v7}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v4

    .line 1010
    .local v4, slide:Lcom/android/mms/model/SlideModel;
    const/4 v3, 0x0

    .line 1011
    .local v3, mm:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1012
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v3

    .line 1019
    :cond_1
    :goto_0
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1021
    invoke-virtual {v3}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1022
    invoke-virtual {v3}, Lcom/android/mms/model/MediaModel;->getDrmObject()Lcom/android/mms/drm/DrmWrapper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/drm/DrmWrapper;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 1026
    .local v0, contentType:Ljava/lang/String;
    :goto_1
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1027
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1028
    invoke-virtual {v3}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1029
    const-string v5, "android.intent.extra.showActionIcons"

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1030
    const-string v5, "single_mode"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1031
    const-string v5, "fromMsg"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1034
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1059
    :goto_2
    return-void

    .line 1013
    .end local v0           #contentType:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_2
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1014
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v3

    goto :goto_0

    .line 1015
    :cond_3
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1016
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->getAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v3

    goto :goto_0

    .line 1024
    :cond_4
    invoke-virtual {v3}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #contentType:Ljava/lang/String;
    goto :goto_1

    .line 1036
    .restart local v2       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 1037
    .local v1, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 1041
    .end local v0           #contentType:Ljava/lang/String;
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_5
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1042
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1044
    invoke-virtual {v3}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1045
    invoke-virtual {v3}, Lcom/android/mms/model/MediaModel;->getDrmObject()Lcom/android/mms/drm/DrmWrapper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/drm/DrmWrapper;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 1049
    .restart local v0       #contentType:Ljava/lang/String;
    :goto_3
    invoke-virtual {v3}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1052
    :try_start_1
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 1054
    :catch_1
    move-exception v1

    .line 1055
    .restart local v1       #e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 1047
    .end local v0           #contentType:Ljava/lang/String;
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    :cond_6
    invoke-virtual {v3}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #contentType:Ljava/lang/String;
    goto :goto_3
.end method

.method public static writeHprofDataToFile()V
    .locals 5

    .prologue
    const-string v4, "MessageUtils"

    .line 1524
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

    .line 1527
    :try_start_0
    invoke-static {v0}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V

    .line 1528
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

    .line 1532
    :goto_0
    return-void

    .line 1529
    :catch_0
    move-exception v0

    .line 1530
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
