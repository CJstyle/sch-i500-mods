.class public Lcom/android/mms/ui/MessageOptions;
.super Ljava/lang/Object;
.source "MessageOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageOptions$ErrorReasonDisplayer;,
        Lcom/android/mms/ui/MessageOptions$RawAttachmentsExportThread;,
        Lcom/android/mms/ui/MessageOptions$AttachCancelListener;,
        Lcom/android/mms/ui/MessageOptions$AttachOkListener;,
        Lcom/android/mms/ui/MessageOptions$PduBodyCache;,
        Lcom/android/mms/ui/MessageOptions$BackgroundQueryHandler;,
        Lcom/android/mms/ui/MessageOptions$DeleteMessageListener;,
        Lcom/android/mms/ui/MessageOptions$CreationOkListener;
    }
.end annotation


# static fields
.field static mBackgroundQueryHandler:Lcom/android/mms/ui/MessageOptions$BackgroundQueryHandler;

.field static mContentResolver:Landroid/content/ContentResolver;

.field static mContext:Landroid/content/Context;

.field static mMsgItem:Lcom/android/mms/ui/MessageItem;

.field static mType:Ljava/lang/String;

.field static msgId:J

.field static mthisContext:Landroid/content/Context;


# instance fields
.field private mRawAttachmentHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Context;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "thisContext"
    .parameter "msgItem"
    .parameter "messageId"
    .parameter "type"

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1376
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mRawAttachmentHandler:Landroid/os/Handler;

    .line 150
    sput-object p1, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    .line 151
    sput-object p2, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    .line 152
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    .line 153
    sput-wide p4, Lcom/android/mms/ui/MessageOptions;->msgId:J

    .line 154
    sput-object p6, Lcom/android/mms/ui/MessageOptions;->mType:Ljava/lang/String;

    .line 155
    sput-object p3, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    .line 157
    new-instance v0, Lcom/android/mms/ui/MessageOptions$BackgroundQueryHandler;

    sget-object v1, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/MessageOptions$BackgroundQueryHandler;-><init>(Lcom/android/mms/ui/MessageOptions;Landroid/content/ContentResolver;)V

    sput-object v0, Lcom/android/mms/ui/MessageOptions;->mBackgroundQueryHandler:Lcom/android/mms/ui/MessageOptions$BackgroundQueryHandler;

    .line 158
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/MessageItem;Lcom/google/android/mms/pdu/SendReq;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/ui/MessageOptions;->forwardMessageStartActivityForMms(Lcom/android/mms/ui/MessageItem;Lcom/google/android/mms/pdu/SendReq;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MessageOptions;Ljava/util/ArrayList;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/MessageOptions;->startExportRawAttachments(Ljava/util/ArrayList;J)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/ui/MessageOptions;JLcom/android/mms/model/AttachmentModel;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/MessageOptions;->copyMedia(JLcom/android/mms/model/AttachmentModel;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/MessageOptions;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mRawAttachmentHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private changeToValidFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "filename"

    .prologue
    .line 1609
    const/16 v5, 0xb

    new-array v3, v5, [C

    fill-array-data v3, :array_0

    .line 1610
    .local v3, invalid_char:[C
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1612
    .local v1, filenameLength:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 1613
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1615
    .local v0, character:C
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_1

    .line 1616
    aget-char v5, v3, v4

    if-ne v0, v5, :cond_0

    .line 1617
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5f

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 1615
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1612
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1621
    .end local v0           #character:C
    .end local v4           #j:I
    :cond_2
    return-object p1

    .line 1609
    nop

    :array_0
    .array-data 0x2
        0x5ct 0x0t
        0x2ft 0x0t
        0x3at 0x0t
        0x2at 0x0t
        0x3ft 0x0t
        0x22t 0x0t
        0x3ct 0x0t
        0x3et 0x0t
        0x7ct 0x0t
        0x3bt 0x0t
        0xat 0x0t
    .end array-data
.end method

.method private static confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 803
    :try_start_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 804
    const v1, 0x7f0900ae

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 805
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 806
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 807
    if-eqz p1, :cond_0

    const v1, 0x7f0900b7

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 809
    const v1, 0x7f090147

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 810
    const v1, 0x7f090148

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 811
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 815
    :goto_1
    return-void

    .line 807
    :cond_0
    const v1, 0x7f0900b6

    goto :goto_0

    .line 812
    :catch_0
    move-exception v0

    .line 813
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private copyMedia(JLcom/android/mms/model/AttachmentModel;)Z
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1404
    const/4 v0, 0x1

    .line 1406
    sget-object v1, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/ui/MessageOptions$PduBodyCache;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v1

    .line 1408
    if-nez v1, :cond_0

    move v0, v7

    .line 1436
    :goto_0
    return v0

    .line 1412
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v2

    move v3, v0

    move v0, v7

    .line 1413
    :goto_1
    if-ge v0, v2, :cond_3

    .line 1414
    invoke-virtual {v1, v0}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v4

    .line 1415
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    .line 1419
    const-string v6, "text/plain"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "application/smil"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1423
    invoke-virtual {p3}, Lcom/android/mms/model/AttachmentModel;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1424
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/mms/ui/MessageOptions;->copyPart(Lcom/google/android/mms/pdu/PduPart;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    and-int/2addr v3, v4

    .line 1413
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1428
    :catch_0
    move-exception v0

    .line 1429
    const-string v1, "Mms/viewer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copyMedia : is failed. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1432
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    move v0, v7

    .line 1434
    goto :goto_0

    :cond_3
    move v0, v3

    .line 1436
    goto :goto_0
.end method

.method private copyMessageToSIM(Lcom/android/mms/ui/MessageItem;)V
    .locals 12
    .parameter

    .prologue
    .line 901
    const-string v0, "Mms/viewer"

    const-string v1, "copyMessageToSIM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    iget v4, p1, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    .line 904
    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    .line 905
    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    .line 911
    iget v0, p1, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    .line 913
    iget-wide v5, p1, Lcom/android/mms/ui/MessageItem;->mTime:J

    .line 914
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 915
    invoke-virtual {v0, v5, v6}, Landroid/text/format/Time;->set(J)V

    .line 916
    invoke-virtual {v0}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v0

    .line 918
    const-string v2, "Mms/viewer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "stime : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    const/4 v2, 0x2

    const/16 v5, 0x8

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 921
    const/16 v5, 0x9

    const/16 v6, 0xf

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 923
    const-string v5, "Mms/viewer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "temp_date : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    const-string v5, "Mms/viewer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "temp_date : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 928
    const-string v0, "Mms/viewer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "timestamp : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 931
    invoke-virtual {v0, v1}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 932
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 935
    sget-object v2, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 937
    const-string v7, "pref_key_manage_smsc_address"

    const-string v8, "Not Set"

    invoke-interface {v2, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 940
    const-string v7, ""

    .line 942
    const/4 v7, 0x1

    if-le v6, v7, :cond_1

    .line 944
    sget-object v0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    sget-object v1, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const v2, 0x7f09002c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 957
    :cond_0
    return-void

    .line 947
    :cond_1
    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_0

    .line 948
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->MakeSimPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v8

    .line 949
    const-string v9, "Mms/viewer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MakeSimPdu : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    if-nez v8, :cond_2

    .line 951
    sget-object v8, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    sget-object v9, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const v10, 0x7f09002f

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 947
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 952
    :cond_2
    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    .line 953
    sget-object v8, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    sget-object v9, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const v10, 0x7f09002e

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 955
    :cond_3
    sget-object v8, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    sget-object v9, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const v10, 0x7f0900e8

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method private copyPart(Lcom/google/android/mms/pdu/PduPart;Ljava/lang/String;)Z
    .locals 15
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1439
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v1

    .line 1441
    const/4 v2, 0x0

    .line 1442
    const/4 v10, 0x0

    .line 1443
    const/4 v11, 0x0

    .line 1445
    const/4 v12, 0x1

    .line 1448
    :try_start_0
    sget-object v3, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v3, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a

    move-result-object v9

    .line 1449
    :try_start_1
    instance-of v1, v9, Ljava/io/FileInputStream;

    if-eqz v1, :cond_1c

    .line 1450
    move-object v0, v9

    check-cast v0, Ljava/io/FileInputStream;

    move-object v8, v0

    .line 1453
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v1

    .line 1454
    if-nez v1, :cond_0

    .line 1455
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v1

    .line 1457
    :cond_0
    if-nez v1, :cond_1

    .line 1458
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v1

    .line 1462
    :cond_1
    if-nez v1, :cond_c

    move-object/from16 v1, p2

    .line 1481
    :goto_0
    const/4 v2, 0x1

    const-string v3, "<"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-ne v2, v3, :cond_2

    .line 1482
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1484
    :cond_2
    const/4 v2, 0x1

    const-string v3, ">"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-ne v2, v3, :cond_3

    .line 1485
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1487
    :cond_3
    const-string v2, "cid:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1488
    const-string v2, "cid:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1491
    :cond_4
    new-instance v13, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v2

    invoke-direct {v13, v2}, Ljava/lang/String;-><init>([B)V

    .line 1492
    invoke-static {v13}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1494
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v3

    .line 1495
    sget-object v1, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    sget-object v2, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 1497
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1498
    const-string v2, "name"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1499
    if-nez v2, :cond_5

    .line 1500
    const-string v2, "cl"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 1504
    :cond_5
    if-eqz v1, :cond_1b

    .line 1506
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v1, v2

    .line 1514
    :cond_6
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1518
    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_11

    .line 1519
    invoke-static {}, Lcom/android/mms/util/MessageMimeTypeMap;->getSingleton()Lcom/android/mms/util/MessageMimeTypeMap;

    move-result-object v3

    invoke-virtual {v3, v13}, Lcom/android/mms/util/MessageMimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v14, v3

    move-object v3, v1

    move-object v1, v14

    .line 1524
    :goto_2
    invoke-static {v13}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1525
    const-string v4, "dcf"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1526
    const-string v1, "dcf"

    .line 1530
    :cond_7
    if-nez v1, :cond_8

    .line 1531
    const-string v4, "text/x-vCard"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1532
    const-string v1, "vcf"

    .line 1542
    :cond_8
    :goto_3
    invoke-direct {p0, v3}, Lcom/android/mms/ui/MessageOptions;->changeToValidFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1544
    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1545
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_14

    const-string v3, "_"

    .line 1548
    :cond_9
    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/mms/ui/MessageOptions;->getUniqueDestination(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v1

    .line 1551
    :try_start_4
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 1552
    if-eqz v2, :cond_15

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_15

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_15

    .line 1553
    const-string v3, "Mms/viewer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[MMS] copyPart: mkdirs for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " failed!"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_b

    .line 1554
    const/4 v1, 0x0

    .line 1584
    if-eqz v9, :cond_a

    .line 1586
    :try_start_5
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1594
    :cond_a
    :goto_5
    if-eqz v10, :cond_b

    .line 1596
    :try_start_6
    throw v10
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 1605
    :cond_b
    :goto_6
    return v1

    .line 1466
    :cond_c
    :try_start_7
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    move-object v1, v2

    goto/16 :goto_0

    .line 1504
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_d

    .line 1506
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_d
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 1571
    :catch_0
    move-exception v1

    move-object v2, v11

    move-object v3, v10

    move-object v4, v9

    .line 1573
    :goto_7
    :try_start_8
    const-string v5, "Mms/viewer"

    const-string v6, "IOException caught while opening or reading stream"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1574
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_17

    .line 1576
    if-eqz v2, :cond_e

    .line 1577
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1579
    :cond_e
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1584
    :catchall_1
    move-exception v1

    move-object v2, v3

    move-object v3, v4

    :goto_8
    if-eqz v3, :cond_f

    .line 1586
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 1594
    :cond_f
    :goto_9
    if-eqz v2, :cond_10

    .line 1596
    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    .line 1602
    :cond_10
    :goto_a
    throw v1

    .line 1521
    :cond_11
    add-int/lit8 v4, v3, 0x1

    :try_start_b
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1522
    const/4 v5, 0x0

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    move-object v1, v4

    goto/16 :goto_2

    .line 1533
    :cond_12
    const-string v4, "text/x-vCalendar"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1534
    const-string v1, "vcs"

    goto/16 :goto_3

    .line 1535
    :cond_13
    const-string v4, "text/x-vNote"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1536
    const-string v1, "vnt"

    goto/16 :goto_3

    .line 1546
    :cond_14
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    move-result-object v3

    goto/16 :goto_4

    .line 1587
    :catch_1
    move-exception v2

    .line 1589
    const-string v3, "Mms/viewer"

    const-string v4, "IOException caught while closing stream"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 1597
    :catch_2
    move-exception v2

    .line 1599
    const-string v3, "Mms/viewer"

    const-string v4, "IOException caught while closing stream"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    .line 1557
    :cond_15
    :try_start_c
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b

    .line 1559
    const/16 v3, 0x1f40

    :try_start_d
    new-array v3, v3, [B

    .line 1561
    :goto_b
    invoke-virtual {v8, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_16

    .line 1562
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_b

    .line 1571
    :catch_3
    move-exception v3

    move-object v4, v9

    move-object v14, v1

    move-object v1, v3

    move-object v3, v2

    move-object v2, v14

    goto/16 :goto_7

    .line 1568
    :cond_16
    sget-object v3, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    move-object v1, v2

    .line 1584
    :goto_c
    if-eqz v9, :cond_1a

    .line 1586
    :try_start_e
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4

    move v2, v12

    .line 1594
    :goto_d
    if-eqz v1, :cond_19

    .line 1596
    :try_start_f
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5

    move v1, v2

    .line 1602
    goto/16 :goto_6

    .line 1587
    :catch_4
    move-exception v2

    .line 1589
    const-string v3, "Mms/viewer"

    const-string v4, "IOException caught while closing stream"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1590
    const/4 v2, 0x0

    goto :goto_d

    .line 1597
    :catch_5
    move-exception v1

    .line 1599
    const-string v2, "Mms/viewer"

    const-string v3, "IOException caught while closing stream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1600
    const/4 v1, 0x0

    .line 1602
    goto/16 :goto_6

    .line 1582
    :cond_17
    const/4 v1, 0x0

    .line 1584
    if-eqz v4, :cond_18

    .line 1586
    :try_start_10
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_7

    .line 1594
    :cond_18
    :goto_e
    if-eqz v3, :cond_b

    .line 1596
    :try_start_11
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_6

    goto/16 :goto_6

    .line 1597
    :catch_6
    move-exception v2

    .line 1599
    const-string v3, "Mms/viewer"

    const-string v4, "IOException caught while closing stream"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    .line 1587
    :catch_7
    move-exception v2

    .line 1589
    const-string v4, "Mms/viewer"

    const-string v5, "IOException caught while closing stream"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e

    .line 1587
    :catch_8
    move-exception v3

    .line 1589
    const-string v4, "Mms/viewer"

    const-string v5, "IOException caught while closing stream"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9

    .line 1597
    :catch_9
    move-exception v2

    .line 1599
    const-string v3, "Mms/viewer"

    const-string v4, "IOException caught while closing stream"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_a

    .line 1584
    :catchall_2
    move-exception v1

    move-object v3, v2

    move-object v2, v10

    goto/16 :goto_8

    :catchall_3
    move-exception v1

    move-object v2, v10

    move-object v3, v9

    goto/16 :goto_8

    :catchall_4
    move-exception v1

    move-object v3, v9

    goto/16 :goto_8

    .line 1571
    :catch_a
    move-exception v1

    move-object v3, v10

    move-object v4, v2

    move-object v2, v11

    goto/16 :goto_7

    :catch_b
    move-exception v2

    move-object v3, v10

    move-object v4, v9

    move-object v14, v2

    move-object v2, v1

    move-object v1, v14

    goto/16 :goto_7

    :cond_19
    move v1, v2

    goto/16 :goto_6

    :cond_1a
    move v2, v12

    goto :goto_d

    :cond_1b
    move-object v1, v2

    goto/16 :goto_1

    :cond_1c
    move-object v1, v10

    goto :goto_c
.end method

.method private static copyToClipboard(Ljava/lang/String;)V
    .locals 3
    .parameter "str"

    .prologue
    .line 578
    sget-object v1, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 579
    .local v0, clip:Landroid/text/ClipboardManager;
    invoke-virtual {v0, p0}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 580
    return-void
.end method

.method private forwardMessage(Lcom/android/mms/ui/MessageItem;)V
    .locals 13
    .parameter

    .prologue
    const/4 v12, 0x0

    const/4 v11, -0x5

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, -0x4

    .line 664
    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    const-string v2, "sms"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 665
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 666
    new-instance v2, Landroid/content/ComponentName;

    sget-object v3, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 667
    const-string v2, "exit_on_sent"

    invoke-virtual {v1, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 668
    const-string v2, "forwarded_message"

    invoke-virtual {v1, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 669
    const-string v2, "sms_body"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FWD: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 670
    sget-object v2, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const-string v3, "com.android.mms.ui.ForwardMessageActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 671
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 672
    sget-object v2, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 740
    :goto_0
    return-void

    .line 674
    :cond_0
    new-instance v3, Lcom/google/android/mms/pdu/SendReq;

    invoke-direct {v3}, Lcom/google/android/mms/pdu/SendReq;-><init>()V

    .line 675
    sget-object v1, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const v2, 0x7f090057

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 676
    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    if-eqz v2, :cond_c

    .line 677
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    .line 679
    :goto_1
    new-instance v1, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v1, v4}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/google/android/mms/pdu/SendReq;->setSubject(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 680
    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    sget-object v2, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/mms/model/SlideshowModel;->makeCopy(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/android/mms/pdu/SendReq;->setBody(Lcom/google/android/mms/pdu/PduBody;)V

    .line 681
    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->getSlides()Ljava/util/ArrayList;

    move-result-object v1

    .line 683
    if-eqz v1, :cond_b

    .line 684
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v9

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/SlideModel;

    .line 685
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v7, v2

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/MediaModel;

    .line 687
    :try_start_0
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 688
    move-object v0, v1

    check-cast v0, Lcom/android/mms/model/ImageModel;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/mms/model/ImageModel;->checkCreationMode()V

    .line 689
    check-cast v1, Lcom/android/mms/model/ImageModel;

    invoke-virtual {v1}, Lcom/android/mms/model/ImageModel;->checkContentRestriction()V

    :cond_1
    :goto_4
    move v1, v7

    :goto_5
    move v7, v1

    .line 705
    goto :goto_3

    .line 690
    :cond_2
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 691
    move-object v0, v1

    check-cast v0, Lcom/android/mms/model/AudioModel;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/mms/model/AudioModel;->checkCreationMode()V

    .line 692
    check-cast v1, Lcom/android/mms/model/AudioModel;

    invoke-virtual {v1}, Lcom/android/mms/model/AudioModel;->checkContentRestriction()V

    goto :goto_4

    .line 697
    :catch_0
    move-exception v1

    .line 698
    const/4 v1, -0x3

    .line 705
    goto :goto_5

    .line 693
    :cond_3
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 694
    move-object v0, v1

    check-cast v0, Lcom/android/mms/model/VideoModel;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/mms/model/VideoModel;->checkCreationMode()V

    .line 695
    check-cast v1, Lcom/android/mms/model/VideoModel;

    invoke-virtual {v1}, Lcom/android/mms/model/VideoModel;->checkContentRestriction()V
    :try_end_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/mms/ResolutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_4

    .line 699
    :catch_1
    move-exception v1

    .line 700
    const/4 v1, -0x2

    .line 705
    goto :goto_5

    .line 701
    :catch_2
    move-exception v1

    move v1, v8

    .line 705
    goto :goto_5

    .line 703
    :catch_3
    move-exception v1

    move v1, v11

    .line 704
    goto :goto_5

    :cond_4
    move v2, v7

    .line 705
    goto :goto_2

    :cond_5
    move v1, v2

    .line 710
    :goto_6
    if-eq v1, v11, :cond_6

    if-ne v1, v8, :cond_a

    .line 711
    :cond_6
    sget-object v2, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/model/CarrierContentRestriction;->getMmsCreationMode(Landroid/content/Context;)I

    move-result v2

    .line 713
    if-ne v2, v10, :cond_7

    .line 714
    new-instance v1, Landroid/app/AlertDialog$Builder;

    sget-object v2, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 715
    const v2, 0x7f02002f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 716
    const v2, 0x7f0900c3

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 717
    const v2, 0x7f0901a2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 718
    const v2, 0x7f090080

    new-instance v5, Lcom/android/mms/ui/MessageOptions$CreationOkListener;

    invoke-direct {v5, p0, p1, v3, v4}, Lcom/android/mms/ui/MessageOptions$CreationOkListener;-><init>(Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/MessageItem;Lcom/google/android/mms/pdu/SendReq;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 719
    const v2, 0x7f090081

    invoke-virtual {v1, v2, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 720
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 722
    :cond_7
    if-nez v2, :cond_9

    .line 723
    new-instance v2, Landroid/app/AlertDialog$Builder;

    sget-object v3, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 724
    const v3, 0x7f02005d

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 725
    if-ne v1, v8, :cond_8

    .line 726
    const v1, 0x7f090050

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 730
    :goto_7
    const v1, 0x7f0901ad

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 731
    const v1, 0x104000a

    invoke-virtual {v2, v1, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 732
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 728
    :cond_8
    const v1, 0x7f090156

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_7

    .line 734
    :cond_9
    invoke-direct {p0, p1, v3, v4, v9}, Lcom/android/mms/ui/MessageOptions;->forwardMessageStartActivityForMms(Lcom/android/mms/ui/MessageItem;Lcom/google/android/mms/pdu/SendReq;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 737
    :cond_a
    invoke-direct {p0, p1, v3, v4, v9}, Lcom/android/mms/ui/MessageOptions;->forwardMessageStartActivityForMms(Lcom/android/mms/ui/MessageItem;Lcom/google/android/mms/pdu/SendReq;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_b
    move v1, v9

    goto :goto_6

    :cond_c
    move-object v4, v1

    goto/16 :goto_1
.end method

.method private forwardMessageStartActivityForMms(Lcom/android/mms/ui/MessageItem;Lcom/google/android/mms/pdu/SendReq;Ljava/lang/String;Z)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 776
    invoke-static {v4}, Lcom/android/mms/model/SlideshowModel;->setAddAttachmentSlide(Z)V

    .line 777
    invoke-static {v4}, Lcom/android/mms/model/SlideshowModel;->setAddAttachmentSlideForCompose(Z)V

    .line 778
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 779
    new-instance v1, Landroid/content/ComponentName;

    sget-object v2, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 780
    const-string v1, "exit_on_sent"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 781
    const-string v1, "forwarded_message"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 784
    :try_start_0
    sget-object v1, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v1

    .line 786
    sget-object v2, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, p2, v2}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 792
    const-string v2, "msg_uri"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 793
    const-string v1, "subject"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 794
    const-string v1, "checkCRMode"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 795
    sget-object v1, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const-string v2, "com.android.mms.ui.ForwardMessageActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 797
    sget-object v1, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 798
    :goto_0
    return-void

    .line 787
    :catch_0
    move-exception v0

    .line 788
    sget-object v0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    const v1, 0x7f090067

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private getAttachmentCount(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;J)I
    .locals 7
    .parameter "context"
    .parameter "slideshow"
    .parameter "msgId"

    .prologue
    .line 163
    sget-object v6, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/android/mms/ui/MessageOptions$PduBodyCache;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    .line 165
    .local v0, body:Lcom/google/android/mms/pdu/PduBody;
    if-nez v0, :cond_0

    .line 166
    const/4 v6, 0x0

    .line 187
    :goto_0
    return v6

    .line 169
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v4

    .line 170
    .local v4, partNum:I
    const/4 v2, 0x0

    .line 172
    .local v2, mAttachmentCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v4, :cond_3

    .line 173
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v3

    .line 174
    .local v3, part:Lcom/google/android/mms/pdu/PduPart;
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    .line 175
    .local v5, type:Ljava/lang/String;
    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isSupportedType(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 177
    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 172
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 183
    :cond_2
    const-string v6, "text/plain"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "application/smil"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 184
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v3           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v5           #type:Ljava/lang/String;
    :cond_3
    move v6, v2

    .line 187
    goto :goto_0
.end method

.method private getFileNameWithPduPart(Lcom/google/android/mms/pdu/PduPart;J)Ljava/lang/String;
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v4, "cid:"

    const-string v9, "."

    .line 1051
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v0

    .line 1052
    if-nez v0, :cond_0

    .line 1053
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v0

    .line 1055
    :cond_0
    if-nez v0, :cond_1

    .line 1056
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v0

    .line 1059
    :cond_1
    if-nez v0, :cond_9

    .line 1061
    invoke-static {p2, p3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    .line 1065
    :goto_0
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-ne v2, v1, :cond_2

    .line 1066
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1068
    :cond_2
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-ne v2, v1, :cond_3

    .line 1069
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1071
    :cond_3
    const-string v1, "cid:"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1072
    const-string v1, "cid:"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1075
    :cond_4
    new-instance v7, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v1

    invoke-direct {v7, v1}, Ljava/lang/String;-><init>([B)V

    .line 1076
    invoke-static {v7}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1078
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v2

    .line 1079
    sget-object v0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    sget-object v1, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1081
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1082
    const-string v1, "name"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1083
    if-nez v1, :cond_5

    .line 1084
    const-string v1, "cl"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1088
    :cond_5
    if-eqz v0, :cond_f

    .line 1090
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    .line 1096
    :cond_6
    :goto_1
    const-string v1, "."

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_b

    .line 1098
    invoke-static {}, Lcom/android/mms/util/MessageMimeTypeMap;->getSingleton()Lcom/android/mms/util/MessageMimeTypeMap;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/android/mms/util/MessageMimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    .line 1103
    :goto_2
    invoke-static {v7}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1104
    const-string v2, "dcf"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1105
    const-string v0, "dcf"

    .line 1109
    :cond_7
    if-nez v0, :cond_8

    .line 1110
    const-string v2, "text/x-vCard"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1111
    const-string v0, "vcf"

    .line 1119
    :cond_8
    :goto_3
    if-nez v0, :cond_e

    move-object v0, v1

    .line 1123
    :goto_4
    return-object v0

    .line 1063
    :cond_9
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    move-object v0, v1

    goto/16 :goto_0

    .line 1088
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_a

    .line 1090
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v1

    .line 1100
    :cond_b
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1101
    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move-object v0, v2

    goto :goto_2

    .line 1112
    :cond_c
    const-string v2, "text/x-vCalendar"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1113
    const-string v0, "vcs"

    goto :goto_3

    .line 1114
    :cond_d
    const-string v2, "text/x-vNote"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1115
    const-string v0, "vnt"

    goto :goto_3

    .line 1123
    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_f
    move-object v0, v1

    goto/16 :goto_1
.end method

.method private getUniqueDestination(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .parameter
    .parameter

    .prologue
    const-string v4, "."

    .line 1627
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1628
    if-nez p2, :cond_0

    .line 1629
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1635
    :goto_0
    const/4 v1, 0x2

    move v5, v1

    move-object v1, v0

    move v0, v5

    :goto_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1636
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1637
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1635
    add-int/lit8 v0, v0, 0x1

    move-object v1, v2

    goto :goto_1

    .line 1632
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 1639
    :cond_1
    return-object v1
.end method

.method public static isSingleSms(Lcom/android/mms/ui/MessageItem;)Z
    .locals 4
    .parameter "msgItem"

    .prologue
    const/4 v3, 0x1

    .line 961
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v1

    .line 962
    .local v1, smsManager:Landroid/telephony/SmsManager;
    iget-object v2, p0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 963
    .local v0, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v3, :cond_0

    .line 964
    const/4 v2, 0x0

    .line 965
    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method private static islockmessage(Ljava/lang/String;)Z
    .locals 11
    .parameter "type"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v10, "locked"

    .line 304
    const/4 v7, 0x0

    .line 306
    .local v7, islocked:Z
    const-string v0, "mms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 307
    new-array v2, v5, [Ljava/lang/String;

    const-string v0, "locked"

    aput-object v10, v2, v4

    .line 310
    .local v2, PROJECTION:[Ljava/lang/String;
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-wide v4, Lcom/android/mms/ui/MessageOptions;->msgId:J

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 311
    .local v1, messageUri:Landroid/net/Uri;
    sget-object v0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 321
    .local v6, cursor:Landroid/database/Cursor;
    :goto_0
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 322
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v8

    .line 323
    .local v8, islocked_long:J
    const-wide/16 v3, 0x1

    cmp-long v0, v8, v3

    if-nez v0, :cond_0

    .line 324
    const/4 v7, 0x1

    .line 328
    .end local v8           #islocked_long:J
    :cond_0
    if-eqz v6, :cond_1

    .line 330
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 333
    :cond_1
    return v7

    .line 314
    .end local v1           #messageUri:Landroid/net/Uri;
    .end local v2           #PROJECTION:[Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_2
    new-array v2, v5, [Ljava/lang/String;

    const-string v0, "locked"

    aput-object v10, v2, v4

    .line 317
    .restart local v2       #PROJECTION:[Ljava/lang/String;
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-wide v4, Lcom/android/mms/ui/MessageOptions;->msgId:J

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 318
    .restart local v1       #messageUri:Landroid/net/Uri;
    sget-object v0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .restart local v6       #cursor:Landroid/database/Cursor;
    goto :goto_0

    .line 328
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 330
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private static lockMessage(Lcom/android/mms/ui/MessageItem;Z)V
    .locals 6
    .parameter "msgItem"
    .parameter "locked"

    .prologue
    const/4 v5, 0x1

    .line 881
    const-string v3, "sms"

    iget-object v4, p0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 882
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    .line 887
    .local v1, uri:Landroid/net/Uri;
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 888
    .local v0, lockUri:Landroid/net/Uri;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 889
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "locked"

    if-eqz p1, :cond_1

    move v4, v5

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 891
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/mms/ui/MessageOptions$1;

    invoke-direct {v4, v0, v2}, Lcom/android/mms/ui/MessageOptions$1;-><init>(Landroid/net/Uri;Landroid/content/ContentValues;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 897
    return-void

    .line 884
    .end local v0           #lockUri:Landroid/net/Uri;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v2           #values:Landroid/content/ContentValues;
    :cond_0
    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    .restart local v1       #uri:Landroid/net/Uri;
    goto :goto_0

    .line 889
    .restart local v0       #lockUri:Landroid/net/Uri;
    .restart local v2       #values:Landroid/content/ContentValues;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private resendMessage(Lcom/android/mms/ui/MessageItem;)V
    .locals 4
    .parameter "msgItem"

    .prologue
    .line 584
    sget-object v1, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 585
    .local v0, mDPM:Landroid/app/admin/DevicePolicyManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAllowTextMessaging(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 587
    const-string v1, "Mms/viewer"

    const-string v2, "message sending is disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    sget-object v1, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    const v2, 0x7f0901d8

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 589
    sget-object p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    .end local p0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 600
    :goto_0
    return-void

    .line 594
    .restart local p0
    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 595
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageOptions;->resendMmsMessageItem(Lcom/android/mms/ui/MessageItem;)V

    .line 599
    :goto_1
    sget-object p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    .end local p0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 597
    .restart local p0
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageOptions;->resendSmsMessageItem(Lcom/android/mms/ui/MessageItem;)V

    goto :goto_1
.end method

.method private resendMmsMessageItem(Lcom/android/mms/ui/MessageItem;)V
    .locals 18
    .parameter "msgItem"

    .prologue
    .line 619
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v14

    .line 620
    .local v14, threadId:J
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    move-object v12, v0

    .line 622
    .local v12, mmsUri:Landroid/net/Uri;
    const/4 v8, 0x0

    .line 624
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "m_size"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 626
    if-eqz v8, :cond_2

    .line 627
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSizeScaleForPendingMmsAllowed()I

    move-result v1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v2

    mul-int/2addr v1, v2

    int-to-long v10, v1

    .line 628
    .local v10, maxMessageSize:J
    const-wide/16 v16, 0x0

    .line 629
    .local v16, totalPendingSize:J
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 630
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    add-long v16, v16, v1

    goto :goto_0

    .line 632
    :cond_0
    cmp-long v1, v16, v10

    if-ltz v1, :cond_2

    .line 633
    sget-object v1, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const v2, 0x7f09013b

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 638
    if-eqz v8, :cond_1

    .line 639
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 652
    .end local v10           #maxMessageSize:J
    .end local v16           #totalPendingSize:J
    :cond_1
    :goto_1
    return-void

    .line 638
    :cond_2
    if-eqz v8, :cond_3

    .line 639
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 643
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->updatePendingStatus()V

    .line 644
    new-instance v13, Lcom/android/mms/transaction/MmsMessageSender;

    sget-object v1, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    move v2, v0

    int-to-long v2, v2

    invoke-direct {v13, v1, v12, v2, v3}, Lcom/android/mms/transaction/MmsMessageSender;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    .line 646
    .local v13, sender:Lcom/android/mms/transaction/MessageSender;
    :try_start_1
    invoke-interface {v13, v14, v15}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z

    move-result v1

    if-nez v1, :cond_1

    .line 647
    sget-object v1, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v12, v3, v4}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 649
    :catch_0
    move-exception v1

    move-object v9, v1

    .line 650
    .local v9, e:Ljava/lang/Exception;
    const-string v1, "Mms/viewer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to send message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", threadId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 638
    .end local v9           #e:Ljava/lang/Exception;
    .end local v13           #sender:Lcom/android/mms/transaction/MessageSender;
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_4

    .line 639
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method

.method private resendSmsMessageItem(Lcom/android/mms/ui/MessageItem;)V
    .locals 11
    .parameter "msgItem"

    .prologue
    const/4 v10, 0x0

    .line 603
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v4

    .line 604
    .local v4, threadId:J
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    aput-object v3, v2, v1

    .line 606
    .local v2, dests:[Ljava/lang/String;
    new-instance v0, Lcom/android/mms/transaction/SmsMessageSender;

    sget-object v1, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;J)V

    .line 608
    .local v0, sender:Lcom/android/mms/transaction/MessageSender;
    :try_start_0
    invoke-interface {v0, v4, v5}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 614
    :goto_0
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v8, p1, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v1, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 615
    .local v7, uri:Landroid/net/Uri;
    sget-object v1, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v3, v7, v10, v10}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 616
    return-void

    .line 609
    .end local v7           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v6

    .line 610
    .local v6, e:Ljava/lang/Exception;
    const-string v1, "Mms/viewer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to send SMS message, threadId="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setLockIcon(Z)V
    .locals 2
    .parameter "isLock"

    .prologue
    .line 1643
    const-string v0, "sms"

    sget-object v1, Lcom/android/mms/ui/MessageOptions;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1644
    sget-object p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    .end local p0
    check-cast p0, Lcom/android/mms/ui/SmsViewerActivity;

    invoke-virtual {p0}, Lcom/android/mms/ui/SmsViewerActivity;->getMViewTitleHeader()Lcom/android/mms/ui/ViewTitleHeader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ViewTitleHeader;->setLockIcon(Z)V

    .line 1648
    :goto_0
    return-void

    .line 1646
    .restart local p0
    :cond_0
    sget-object p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    .end local p0
    check-cast p0, Lcom/android/mms/ui/SlideshowActivity;

    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getMViewTitleHeader()Lcom/android/mms/ui/ViewTitleHeader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ViewTitleHeader;->setLockIcon(Z)V

    goto :goto_0
.end method

.method private static showDeliveryReport(JLjava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 872
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/mms/ui/DeliveryReportActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 873
    const-string v1, "message_id"

    invoke-virtual {v0, v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 874
    const-string v1, "message_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 875
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 876
    sget-object v1, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 877
    return-void
.end method

.method private startExportRawAttachments(Ljava/util/ArrayList;J)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;J)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1224
    const-string v2, "/sdcard/download/"

    .line 1225
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move v3, v5

    .line 1229
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_4

    .line 1238
    const-string v4, "text/plain"

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/AttachmentModel;

    invoke-virtual {v0}, Lcom/android/mms/model/AttachmentModel;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v4, "application/smil"

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/AttachmentModel;

    invoke-virtual {v0}, Lcom/android/mms/model/AttachmentModel;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1239
    const/4 v0, 0x1

    .line 1244
    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1249
    sget-object p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    const/high16 v0, 0x7f08

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    .line 1256
    :cond_1
    :goto_2
    return-void

    .line 1229
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 1251
    :cond_3
    new-instance v0, Lcom/android/mms/ui/MessageOptions$RawAttachmentsExportThread;

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/MessageOptions$RawAttachmentsExportThread;-><init>(Lcom/android/mms/ui/MessageOptions;Ljava/lang/String;Ljava/util/ArrayList;J)V

    .line 1252
    if-eqz v0, :cond_1

    .line 1253
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageOptions$RawAttachmentsExportThread;->start()V

    goto :goto_2

    :cond_4
    move v0, v5

    goto :goto_1
.end method


# virtual methods
.method public createOptionsMenu(Landroid/view/Menu;)V
    .locals 13
    .parameter "menu"

    .prologue
    const/16 v12, 0x32

    const/16 v11, 0x23

    const/4 v10, 0x2

    const v9, 0x7f020035

    const/4 v8, 0x0

    .line 191
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 206
    sget-object v4, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->isInboxMessage()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 207
    const/16 v4, 0x20

    const v5, 0x7f0900d5

    invoke-interface {p1, v8, v4, v8, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f020050

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 210
    :cond_0
    sget-object v4, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 211
    const/16 v4, 0x1e

    const v5, 0x7f0900d4

    invoke-interface {p1, v8, v4, v8, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f020051

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 215
    :cond_1
    sget-object v4, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 216
    const/16 v4, 0x15

    const v5, 0x7f090022

    invoke-interface {p1, v8, v4, v8, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f020042

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 220
    :cond_2
    sget-object v4, Lcom/android/mms/ui/MessageOptions;->mType:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/mms/ui/MessageOptions;->islockmessage(Ljava/lang/String;)Z

    move-result v1

    .line 221
    .local v1, islocked:Z
    if-eqz v1, :cond_6

    .line 222
    const/16 v4, 0x1d

    const v5, 0x7f0900dc

    invoke-interface {p1, v8, v4, v8, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f020052

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 229
    :goto_0
    const/16 v4, 0x12

    const v5, 0x7f0900d9

    invoke-interface {p1, v8, v4, v8, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x20200df

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 234
    sget-object v4, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 235
    const/16 v4, 0x18

    const v5, 0x7f09002a

    invoke-interface {p1, v8, v4, v8, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f02003c

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 238
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-static {v4}, Lcom/android/mms/ui/MessageOptions;->isSingleSms(Lcom/android/mms/ui/MessageItem;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    sget-object v4, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v4

    if-ne v4, v10, :cond_4

    .line 240
    :cond_3
    const/16 v4, 0x1f

    const v5, 0x7f09002b

    invoke-interface {p1, v8, v4, v8, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f02003d

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 245
    :cond_4
    sget-object v4, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 247
    const/4 v3, 0x0

    .line 249
    .local v3, slideshow:Lcom/android/mms/model/SlideshowModel;
    :try_start_0
    sget-object v4, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    sget-object v5, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-wide v6, Lcom/android/mms/ui/MessageOptions;->msgId:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 258
    :goto_1
    sget-object v4, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v4, v4, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v4, :cond_8

    .line 259
    if-eqz v3, :cond_5

    .line 260
    sget-object v4, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    sget-wide v5, Lcom/android/mms/ui/MessageOptions;->msgId:J

    invoke-direct {p0, v4, v3, v5, v6}, Lcom/android/mms/ui/MessageOptions;->getAttachmentCount(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;J)I

    move-result v2

    .line 261
    .local v2, mGetAttachmentsCount:I
    if-ge v2, v10, :cond_7

    .line 263
    const v4, 0x7f09018d

    invoke-interface {p1, v8, v12, v8, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 287
    .end local v2           #mGetAttachmentsCount:I
    .end local v3           #slideshow:Lcom/android/mms/model/SlideshowModel;
    :cond_5
    :goto_2
    const/16 v4, 0x11

    const v5, 0x7f090018

    invoke-interface {p1, v8, v4, v8, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f020044

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 299
    return-void

    .line 225
    :cond_6
    const/16 v4, 0x1c

    const v5, 0x7f0900db

    invoke-interface {p1, v8, v4, v8, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f020046

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 252
    .restart local v3       #slideshow:Lcom/android/mms/model/SlideshowModel;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 254
    .local v0, e1:Lcom/google/android/mms/MmsException;
    invoke-virtual {v0}, Lcom/google/android/mms/MmsException;->printStackTrace()V

    goto :goto_1

    .line 266
    .end local v0           #e1:Lcom/google/android/mms/MmsException;
    .restart local v2       #mGetAttachmentsCount:I
    :cond_7
    const v4, 0x7f09018c

    invoke-interface {p1, v8, v11, v8, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_2

    .line 271
    .end local v2           #mGetAttachmentsCount:I
    :cond_8
    if-eqz v3, :cond_5

    .line 272
    sget-object v4, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    sget-wide v5, Lcom/android/mms/ui/MessageOptions;->msgId:J

    invoke-direct {p0, v4, v3, v5, v6}, Lcom/android/mms/ui/MessageOptions;->getAttachmentCount(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;J)I

    move-result v2

    .line 273
    .restart local v2       #mGetAttachmentsCount:I
    if-ge v2, v10, :cond_9

    .line 275
    const v4, 0x7f09018d

    invoke-interface {p1, v8, v12, v8, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_2

    .line 278
    :cond_9
    const v4, 0x7f09018c

    invoke-interface {p1, v8, v11, v8, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method public isPlayerStop(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 1651
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_1

    .line 1652
    :cond_0
    const/4 v0, 0x1

    .line 1654
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public optionItemSelected(Landroid/view/MenuItem;)Z
    .locals 14
    .parameter "item"

    .prologue
    .line 440
    sget-object v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-nez v0, :cond_0

    .line 441
    const/4 v0, 0x0

    .line 573
    .end local p0
    :goto_0
    return v0

    .line 443
    .restart local p0
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 573
    const/4 v0, 0x0

    goto :goto_0

    .line 445
    :sswitch_0
    sget-object p0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    .end local p0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 446
    const/4 v0, 0x1

    goto :goto_0

    .line 449
    .restart local p0
    :sswitch_1
    sget-object v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageOptions;->resendMessage(Lcom/android/mms/ui/MessageItem;)V

    .line 450
    const/4 v0, 0x1

    goto :goto_0

    .line 453
    :sswitch_2
    sget-object v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/mms/ui/MessageOptions;->copyToClipboard(Ljava/lang/String;)V

    .line 454
    const/4 v0, 0x1

    goto :goto_0

    .line 460
    :sswitch_3
    sget-object v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageOptions;->copyMessageToSIM(Lcom/android/mms/ui/MessageItem;)V

    .line 462
    const/4 v0, 0x1

    goto :goto_0

    .line 465
    :sswitch_4
    sget-object v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageOptions;->forwardMessage(Lcom/android/mms/ui/MessageItem;)V

    .line 466
    const/4 v0, 0x1

    goto :goto_0

    .line 470
    :sswitch_5
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "m_type"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "msg_box"

    aput-object v1, v2, v0

    .line 477
    .local v2, PROJECTION_Mms:[Ljava/lang/String;
    const/4 v0, 0x6

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v5, v0

    const/4 v0, 0x1

    const-string v1, "type"

    aput-object v1, v5, v0

    const/4 v0, 0x2

    const-string v1, "address"

    aput-object v1, v5, v0

    const/4 v0, 0x3

    const-string v1, "date"

    aput-object v1, v5, v0

    const/4 v0, 0x4

    const-string v1, "error_code"

    aput-object v1, v5, v0

    const/4 v0, 0x5

    const-string v1, "pri"

    aput-object v1, v5, v0

    .line 487
    .local v5, PROJECTION_Sms:[Ljava/lang/String;
    const-string v0, "mms"

    sget-object v1, Lcom/android/mms/ui/MessageOptions;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 488
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-wide v3, Lcom/android/mms/ui/MessageOptions;->msgId:J

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 489
    .local v1, messageUri:Landroid/net/Uri;
    sget-object v0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v5           #PROJECTION_Sms:[Ljava/lang/String;
    move-result-object v9

    .line 494
    .local v9, cursor:Landroid/database/Cursor;
    :goto_1
    if-eqz v9, :cond_1

    .line 496
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 497
    sget-object v0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    sget-object v1, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    .end local v1           #messageUri:Landroid/net/Uri;
    iget v1, v1, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    sget-object v2, Lcom/android/mms/ui/MessageOptions;->mType:Ljava/lang/String;

    .end local v2           #PROJECTION_Mms:[Ljava/lang/String;
    invoke-static {v0, v9, v1, v2}, Lcom/android/mms/ui/MessageUtils;->getMessageDetailsforViewer(Landroid/content/Context;Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 500
    .local v13, messageDetails:Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0900c0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    if-eqz v9, :cond_1

    .line 511
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 516
    .end local v13           #messageDetails:Ljava/lang/String;
    :cond_1
    :goto_2
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 491
    .end local v9           #cursor:Landroid/database/Cursor;
    .restart local v2       #PROJECTION_Mms:[Ljava/lang/String;
    .restart local v5       #PROJECTION_Sms:[Ljava/lang/String;
    :cond_2
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-wide v3, Lcom/android/mms/ui/MessageOptions;->msgId:J

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 492
    .restart local v1       #messageUri:Landroid/net/Uri;
    sget-object v3, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .restart local v9       #cursor:Landroid/database/Cursor;
    goto :goto_1

    .line 506
    .end local v1           #messageUri:Landroid/net/Uri;
    .end local v2           #PROJECTION_Mms:[Ljava/lang/String;
    .end local v5           #PROJECTION_Sms:[Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v10, v0

    .line 507
    .local v10, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "Mms/viewer"

    const-string v1, "Failed view message details"

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 509
    if-eqz v9, :cond_1

    .line 511
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 509
    .end local v10           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_3

    .line 511
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 520
    .end local v9           #cursor:Landroid/database/Cursor;
    :sswitch_6
    sget-object v0, Lcom/android/mms/ui/MessageOptions;->mType:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/mms/ui/MessageOptions;->islockmessage(Ljava/lang/String;)Z

    move-result v11

    .line 522
    .local v11, islocked:Z
    new-instance v12, Lcom/android/mms/ui/MessageOptions$DeleteMessageListener;

    sget-object v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-direct {v12, p0, v0, v11}, Lcom/android/mms/ui/MessageOptions$DeleteMessageListener;-><init>(Lcom/android/mms/ui/MessageOptions;Landroid/net/Uri;Z)V

    .line 524
    .local v12, l:Lcom/android/mms/ui/MessageOptions$DeleteMessageListener;
    invoke-static {v12, v11}, Lcom/android/mms/ui/MessageOptions;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;Z)V

    .line 525
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 529
    .end local v11           #islocked:Z
    .end local v12           #l:Lcom/android/mms/ui/MessageOptions$DeleteMessageListener;
    :sswitch_7
    sget-wide v3, Lcom/android/mms/ui/MessageOptions;->msgId:J

    sget-object v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-static {v3, v4, v0}, Lcom/android/mms/ui/MessageOptions;->showDeliveryReport(JLjava/lang/String;)V

    .line 530
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 550
    :sswitch_8
    sget-object v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v1, 0x1

    sget-wide v3, Lcom/android/mms/ui/MessageOptions;->msgId:J

    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/android/mms/ui/MessageOptions;->showAttachmentList(Lcom/android/mms/model/SlideshowModel;ZJ)V

    .line 551
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 555
    :sswitch_9
    sget-object v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageOptions;->lockMessage(Lcom/android/mms/ui/MessageItem;Z)V

    .line 557
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageOptions;->setLockIcon(Z)V

    .line 558
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 562
    :sswitch_a
    sget-object v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageOptions;->lockMessage(Lcom/android/mms/ui/MessageItem;Z)V

    .line 564
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageOptions;->setLockIcon(Z)V

    .line 565
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 569
    :sswitch_b
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 443
    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_5
        0x12 -> :sswitch_6
        0x14 -> :sswitch_7
        0x15 -> :sswitch_4
        0x18 -> :sswitch_2
        0x1b -> :sswitch_b
        0x1c -> :sswitch_9
        0x1d -> :sswitch_a
        0x1e -> :sswitch_1
        0x1f -> :sswitch_3
        0x20 -> :sswitch_0
        0x23 -> :sswitch_8
        0x32 -> :sswitch_8
    .end sparse-switch
.end method

.method public showAttachmentList(Lcom/android/mms/model/SlideshowModel;ZJ)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 972
    sget-object v0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageOptions$PduBodyCache;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    .line 973
    if-nez v0, :cond_0

    .line 1047
    :goto_0
    return-void

    .line 977
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v1

    .line 978
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 988
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_2

    .line 989
    invoke-virtual {v0, v3}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v4

    .line 990
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    .line 993
    const-string v6, "text/plain"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "application/smil"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 996
    invoke-direct {p0, v4, p3, p4}, Lcom/android/mms/ui/MessageOptions;->getFileNameWithPduPart(Lcom/google/android/mms/pdu/PduPart;J)Ljava/lang/String;

    move-result-object v6

    .line 997
    const/4 v7, 0x0

    .line 1000
    :try_start_0
    new-instance v8, Lcom/android/mms/model/AttachmentModel;

    sget-object v9, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v8, v9, v5, v6, v4}, Lcom/android/mms/model/AttachmentModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v8

    .line 1006
    :goto_2
    if-eqz v4, :cond_1

    .line 1007
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v2, v5, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 988
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1001
    :catch_0
    move-exception v4

    .line 1003
    invoke-virtual {v4}, Lcom/google/android/mms/MmsException;->printStackTrace()V

    move-object v4, v7

    goto :goto_2

    .line 1011
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_3

    .line 1013
    sget-object v0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    const v1, 0x7f09018e

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1016
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 1018
    invoke-direct {p0, v2, p3, p4}, Lcom/android/mms/ui/MessageOptions;->startExportRawAttachments(Ljava/util/ArrayList;J)V

    goto :goto_0

    .line 1022
    :cond_4
    new-instance v6, Lcom/android/mms/ui/AttachmentListAdapter;

    sget-object v0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    const v1, 0x7f030001

    invoke-direct {v6, v0, v1, v2}, Lcom/android/mms/ui/AttachmentListAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 1024
    new-instance v7, Landroid/app/AlertDialog$Builder;

    sget-object v0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    invoke-direct {v7, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1025
    const v0, 0x7f09018c

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1026
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1028
    if-eqz p2, :cond_5

    .line 1030
    const v8, 0x7f090136

    new-instance v0, Lcom/android/mms/ui/MessageOptions$AttachOkListener;

    sget-object v2, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    move-object v1, p0

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/MessageOptions$AttachOkListener;-><init>(Lcom/android/mms/ui/MessageOptions;Landroid/content/Context;ZJ)V

    invoke-virtual {v7, v8, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1036
    :cond_5
    const v0, 0x7f090081

    new-instance v1, Lcom/android/mms/ui/MessageOptions$AttachCancelListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/mms/ui/MessageOptions$AttachCancelListener;-><init>(Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/MessageOptions$1;)V

    invoke-virtual {v7, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1037
    new-instance v0, Lcom/android/mms/ui/MessageOptions$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageOptions$2;-><init>(Lcom/android/mms/ui/MessageOptions;)V

    invoke-virtual {v7, v6, v0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1042
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1043
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1045
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/android/mms/ui/AttachmentListAdapter;->setSaveButton(Landroid/widget/Button;)V

    goto/16 :goto_0
.end method
