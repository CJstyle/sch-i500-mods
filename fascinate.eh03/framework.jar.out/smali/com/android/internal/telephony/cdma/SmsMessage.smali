.class public Lcom/android/internal/telephony/cdma/SmsMessage;
.super Lcom/android/internal/telephony/SmsMessageBase;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/SmsMessage$DeliverPdu;,
        Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    }
.end annotation


# static fields
.field private static final LOGGABLE_TAG:Ljava/lang/String; = "CDMA:SMS"

.field static final LOG_TAG:Ljava/lang/String; = "CDMA"

.field private static final RETURN_ACK:I = 0x1

.field private static final RETURN_NO_ACK:I

.field public static bIsCMAS:Z

.field public static mCmasData:Lcom/android/internal/telephony/cdma/sms/CMASdata;

.field public static mScptData:Lcom/android/internal/telephony/cdma/sms/SCPTData;


# instance fields
.field private mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

.field private mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsMessageBase;-><init>()V

    .line 108
    return-void
.end method

.method public static calculateLength(Ljava/lang/CharSequence;IZ)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .locals 1
    .parameter "messageBody"
    .parameter "seq"
    .parameter "use7bitOnly"

    .prologue
    .line 593
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->calcTextEncodingDetails(Ljava/lang/CharSequence;IZ)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method public static calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .locals 1
    .parameter "messageBody"
    .parameter "use7bitOnly"

    .prologue
    .line 581
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->calcTextEncodingDetails(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method public static calculateLengthWithEmail(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .locals 1
    .parameter "messageBody"
    .parameter "use7bitOnly"
    .parameter "maxEmailLen"

    .prologue
    .line 602
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->calcTextEncodingDetailsWithEmail(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method private convertDtmfToAscii(B)B
    .locals 1
    .parameter "dtmfDigit"

    .prologue
    .line 995
    packed-switch p1, :pswitch_data_0

    .line 1013
    const/16 v0, 0x20

    .line 1017
    .local v0, asciiDigit:B
    :goto_0
    return v0

    .line 996
    .end local v0           #asciiDigit:B
    :pswitch_0
    const/16 v0, 0x44

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 997
    .end local v0           #asciiDigit:B
    :pswitch_1
    const/16 v0, 0x31

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 998
    .end local v0           #asciiDigit:B
    :pswitch_2
    const/16 v0, 0x32

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 999
    .end local v0           #asciiDigit:B
    :pswitch_3
    const/16 v0, 0x33

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 1000
    .end local v0           #asciiDigit:B
    :pswitch_4
    const/16 v0, 0x34

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 1001
    .end local v0           #asciiDigit:B
    :pswitch_5
    const/16 v0, 0x35

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 1002
    .end local v0           #asciiDigit:B
    :pswitch_6
    const/16 v0, 0x36

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 1003
    .end local v0           #asciiDigit:B
    :pswitch_7
    const/16 v0, 0x37

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 1004
    .end local v0           #asciiDigit:B
    :pswitch_8
    const/16 v0, 0x38

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 1005
    .end local v0           #asciiDigit:B
    :pswitch_9
    const/16 v0, 0x39

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 1006
    .end local v0           #asciiDigit:B
    :pswitch_a
    const/16 v0, 0x30

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 1007
    .end local v0           #asciiDigit:B
    :pswitch_b
    const/16 v0, 0x2a

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 1008
    .end local v0           #asciiDigit:B
    :pswitch_c
    const/16 v0, 0x23

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 1009
    .end local v0           #asciiDigit:B
    :pswitch_d
    const/16 v0, 0x41

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 1010
    .end local v0           #asciiDigit:B
    :pswitch_e
    const/16 v0, 0x42

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 1011
    .end local v0           #asciiDigit:B
    :pswitch_f
    const/16 v0, 0x43

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .line 995
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
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public static createFromEfRecord(I[B)Lcom/android/internal/telephony/cdma/SmsMessage;
    .locals 8
    .parameter "index"
    .parameter "data"

    .prologue
    const/4 v6, 0x0

    const-string v7, "CDMA"

    .line 253
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>()V

    .line 255
    .local v1, msg:Lcom/android/internal/telephony/cdma/SmsMessage;
    iput p0, v1, Lcom/android/internal/telephony/SmsMessageBase;->indexOnIcc:I

    .line 260
    const/4 v4, 0x0

    aget-byte v4, p1, v4

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_0

    .line 261
    const-string v4, "CDMA"

    const-string v5, "SMS parsing failed: Trying to parse a free record"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v6

    .line 280
    .end local v1           #msg:Lcom/android/internal/telephony/cdma/SmsMessage;
    :goto_0
    return-object v4

    .line 264
    .restart local v1       #msg:Lcom/android/internal/telephony/cdma/SmsMessage;
    :cond_0
    const/4 v4, 0x0

    aget-byte v4, p1, v4

    and-int/lit8 v4, v4, 0x7

    iput v4, v1, Lcom/android/internal/telephony/SmsMessageBase;->statusOnIcc:I

    .line 269
    const/4 v4, 0x1

    aget-byte v3, p1, v4

    .line 273
    .local v3, size:I
    new-array v2, v3, [B

    .line 274
    .local v2, pdu:[B
    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {p1, v4, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v1

    .line 277
    goto :goto_0

    .line 278
    .end local v1           #msg:Lcom/android/internal/telephony/cdma/SmsMessage;
    .end local v2           #pdu:[B
    .end local v3           #size:I
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 279
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v4, "CDMA"

    const-string v4, "SMS PDU parsing failed: "

    invoke-static {v7, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v4, v6

    .line 280
    goto :goto_0
.end method

.method public static createFromPdu([B)Lcom/android/internal/telephony/cdma/SmsMessage;
    .locals 4
    .parameter "pdu"

    .prologue
    .line 116
    new-instance v1, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>()V

    .line 119
    .local v1, msg:Lcom/android/internal/telephony/cdma/SmsMessage;
    :try_start_0
    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    .line 123
    :goto_0
    return-object v2

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v2, "CDMA"

    const-string v3, "SMS PDU parsing failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private createPdu()V
    .locals 8

    .prologue
    const/16 v6, 0x64

    .line 948
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .line 949
    .local v3, env:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    iget-object v0, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 950
    .local v0, addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v6}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 951
    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, v1, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v2, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 954
    .local v2, dos:Ljava/io/DataOutputStream;
    :try_start_0
    iget v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 955
    iget v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 956
    iget v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 958
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 959
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 960
    iget v5, v0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 961
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 962
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 963
    iget-object v5, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    const/4 v6, 0x0

    iget-object v7, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    array-length v7, v7

    invoke-virtual {v2, v5, v6, v7}, Ljava/io/DataOutputStream;->write([BII)V

    .line 965
    iget v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 967
    iget-byte v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->replySeqNo:B

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 968
    iget-byte v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 969
    iget-byte v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->causeCode:B

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 971
    iget-object v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    array-length v5, v5

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 972
    iget-object v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    const/4 v6, 0x0

    iget-object v7, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    array-length v7, v7

    invoke-virtual {v2, v5, v6, v7}, Ljava/io/DataOutputStream;->write([BII)V

    .line 973
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 983
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/SmsMessageBase;->mPdu:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 987
    :goto_0
    return-void

    .line 984
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 985
    .local v4, ex:Ljava/io/IOException;
    const-string v5, "CDMA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createPdu: conversion from object to byte array failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getCMASObject()Lcom/android/internal/telephony/cdma/sms/CMASdata;
    .locals 2

    .prologue
    .line 1109
    const-string v0, "CDMA"

    const-string v1, "getCMASObject in SmsMessage.java from cdma"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    sget-object v0, Lcom/android/internal/telephony/cdma/SmsMessage;->mCmasData:Lcom/android/internal/telephony/cdma/sms/CMASdata;

    return-object v0
.end method

.method private static declared-synchronized getNextMessageId()I
    .locals 6

    .prologue
    const-string v2, "CDMA"

    const-string/jumbo v2, "persist.radio.cdma.msgid"

    .line 838
    const-class v2, Lcom/android/internal/telephony/cdma/SmsMessage;

    monitor-enter v2

    :try_start_0
    const-string/jumbo v3, "persist.radio.cdma.msgid"

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 839
    .local v0, msgId:I
    const v3, 0xffff

    rem-int v3, v0, v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 840
    .local v1, nextMsgId:Ljava/lang/String;
    const-string/jumbo v3, "persist.radio.cdma.msgid"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    const-string v3, "CDMA:SMS"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 842
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "next persist.radio.cdma.msgid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readback gets "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "persist.radio.cdma.msgid"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 846
    :cond_0
    monitor-exit v2

    return v0

    .line 838
    .end local v0           #msgId:I
    .end local v1           #nextMsgId:Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3
.end method

.method public static getSCPTObject()Lcom/android/internal/telephony/cdma/sms/SCPTData;
    .locals 2

    .prologue
    .line 1114
    const-string v0, "CDMA"

    const-string v1, "getSCPTObject in SmsMessage.java from cdma"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    sget-object v0, Lcom/android/internal/telephony/cdma/SmsMessage;->mScptData:Lcom/android/internal/telephony/cdma/sms/SCPTData;

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;IIII)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 4
    .parameter "destAddrStr"
    .parameter "noOfOccur"
    .parameter "scptCategory"
    .parameter "scptLanguage"
    .parameter "scptCategoryResult"

    .prologue
    .line 392
    const/4 v0, 0x0

    .line 393
    .local v0, dstAddr:Ljava/lang/String;
    const/4 v0, 0x0

    .line 395
    .local v0, callbackAddr:Ljava/lang/String;
    const-string v0, "CDMA"

    .end local v0           #callbackAddr:Ljava/lang/String;
    const-string v1, "getSubmitPdu for SCPT "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    .line 399
    .local p0, dstAddr:Ljava/lang/String;
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(0)NANP : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v1

    .line 409
    .local v1, destAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    if-nez v1, :cond_0

    const/4 p0, 0x0

    .line 493
    .end local v1           #destAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local p0           #dstAddr:Ljava/lang/String;
    .end local p1
    .end local p2
    .end local p3
    .end local p4
    :goto_0
    return-object p0

    .line 411
    .restart local v1       #destAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local p0       #dstAddr:Ljava/lang/String;
    .restart local p1
    .restart local p2
    .restart local p3
    .restart local p4
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    .line 412
    .local v0, bearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    const/4 p0, 0x2

    iput p0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    .line 414
    .end local p0           #dstAddr:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNextMessageId()I

    move-result p0

    iput p0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    .line 416
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/SCPTResult;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/sms/SCPTResult;-><init>()V

    .line 418
    .local v2, scptTestMsg:Lcom/android/internal/telephony/cdma/sms/SCPTResult;
    iput p1, v2, Lcom/android/internal/telephony/cdma/sms/SCPTResult;->numberOfOccurance:I

    .line 419
    const/4 p0, 0x0

    .end local p1
    .local p0, i:I
    :goto_1
    iget p1, v2, Lcom/android/internal/telephony/cdma/sms/SCPTResult;->numberOfOccurance:I

    if-ge p0, p1, :cond_1

    .line 420
    new-instance p1, Lcom/android/internal/telephony/cdma/sms/SCPTResult$SCPTResultParam;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p1, v2}, Lcom/android/internal/telephony/cdma/sms/SCPTResult$SCPTResultParam;-><init>(Lcom/android/internal/telephony/cdma/sms/SCPTResult;)V

    .line 421
    .local p1, scptResParm:Lcom/android/internal/telephony/cdma/sms/SCPTResult$SCPTResultParam;
    iput p2, p1, Lcom/android/internal/telephony/cdma/sms/SCPTResult$SCPTResultParam;->category:I

    .line 422
    iput p3, p1, Lcom/android/internal/telephony/cdma/sms/SCPTResult$SCPTResultParam;->language:I

    .line 423
    iput p4, p1, Lcom/android/internal/telephony/cdma/sms/SCPTResult$SCPTResultParam;->categoryResult:I

    .line 424
    const/4 v3, 0x0

    iput v3, p1, Lcom/android/internal/telephony/cdma/sms/SCPTResult$SCPTResultParam;->reserved:I

    .line 425
    iget-object v3, v2, Lcom/android/internal/telephony/cdma/sms/SCPTResult;->scptResultParam:[Lcom/android/internal/telephony/cdma/sms/SCPTResult$SCPTResultParam;

    aput-object p1, v3, p0

    .line 419
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    .line 427
    .end local p1           #scptResParm:Lcom/android/internal/telephony/cdma/sms/SCPTResult$SCPTResultParam;
    :cond_1
    iput-object v2, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->scptResult:Lcom/android/internal/telephony/cdma/sms/SCPTResult;

    .line 429
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode(Lcom/android/internal/telephony/cdma/sms/BearerData;)[B

    move-result-object p2

    .line 430
    .local p2, encodedBearerData:[B
    const-string p0, "CDMA:SMS"

    .end local p0           #i:I
    const/4 p1, 0x2

    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 431
    const-string p0, "CDMA"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "MO (encoded) BearerData = "

    .end local p3
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    const-string p0, "CDMA"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "MO raw BearerData = \'"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "\'"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_2
    if-nez p2, :cond_3

    const/4 p0, 0x0

    goto :goto_0

    .line 437
    :cond_3
    const/16 p0, 0x1006

    .line 439
    .local p0, teleservice:I
    new-instance p3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {p3}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 440
    .local p3, envelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    const/4 p1, 0x0

    iput p1, p3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 441
    iput p0, p3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 442
    iput-object v1, p3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->destAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 443
    const/4 p0, 0x1

    iput p0, p3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    .line 444
    .end local p0           #teleservice:I
    iput-object p2, p3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 451
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    const/16 p1, 0x64

    invoke-direct {p0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 452
    .local p0, baos:Ljava/io/ByteArrayOutputStream;
    new-instance p1, Ljava/io/DataOutputStream;

    invoke-direct {p1, p0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 458
    .local p1, dos:Ljava/io/DataOutputStream;
    :try_start_0
    iget p3, p3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .end local p3           #envelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    invoke-virtual {p1, p3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 459
    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 460
    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 461
    iget p3, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {p1, p3}, Ljava/io/DataOutputStream;->write(I)V

    .line 462
    iget p3, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {p1, p3}, Ljava/io/DataOutputStream;->write(I)V

    .line 463
    iget p3, v1, Lcom/android/internal/telephony/SmsAddress;->ton:I

    invoke-virtual {p1, p3}, Ljava/io/DataOutputStream;->write(I)V

    .line 464
    iget p3, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {p1, p3}, Ljava/io/DataOutputStream;->write(I)V

    .line 465
    iget p3, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {p1, p3}, Ljava/io/DataOutputStream;->write(I)V

    .line 466
    iget-object p3, v1, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    const/4 p4, 0x0

    iget-object v1, v1, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    .end local v1           #destAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local p4
    array-length v1, v1

    invoke-virtual {p1, p3, p4, v1}, Ljava/io/DataOutputStream;->write([BII)V

    .line 468
    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Ljava/io/DataOutputStream;->write(I)V

    .line 469
    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Ljava/io/DataOutputStream;->write(I)V

    .line 470
    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Ljava/io/DataOutputStream;->write(I)V

    .line 471
    array-length p3, p2

    invoke-virtual {p1, p3}, Ljava/io/DataOutputStream;->write(I)V

    .line 472
    const/4 p3, 0x0

    array-length p4, p2

    invoke-virtual {p1, p2, p3, p4}, Ljava/io/DataOutputStream;->write([BII)V

    .line 473
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V

    .line 475
    new-instance p2, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    .end local p2           #encodedBearerData:[B
    invoke-direct {p2}, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;-><init>()V

    .line 476
    .local p2, pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .end local p0           #baos:Ljava/io/ByteArrayOutputStream;
    iput-object p0, p2, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    .line 477
    const/4 p0, 0x0

    iput-object p0, p2, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    .line 479
    if-eqz v0, :cond_4

    .line 480
    iget p0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    iput p0, p2, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->mMsgRef:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    move-object p0, p2

    .line 481
    goto/16 :goto_0

    .line 484
    .end local p2           #pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :catch_0
    move-exception p0

    .line 485
    .local p0, ex:Ljava/io/IOException;
    const-string p2, "CDMA"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "SCPT createFromPdu: conversion from byte array to object failed: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #ex:Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :try_start_1
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 488
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 490
    :catch_1
    move-exception p0

    .line 492
    .local p0, e:Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 493
    const/4 p0, 0x0

    goto/16 :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;Z)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 1
    .parameter "destAddr"
    .parameter "userData"
    .parameter "statusReportRequested"

    .prologue
    .line 385
    invoke-static {p0, p2, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 4
    .parameter "scAddr"
    .parameter "destAddr"
    .parameter "destPort"
    .parameter "data"
    .parameter "statusReportRequested"

    .prologue
    const/4 v3, 0x0

    .line 356
    new-instance v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .line 357
    .local v0, portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    iput p2, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 358
    iput v3, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    .line 359
    iput-boolean v3, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    .line 361
    new-instance v1, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v1}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 362
    .local v1, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 364
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 365
    .local v2, uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    iput-object v1, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 366
    iput v3, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 367
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 368
    iput-object p3, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 370
    invoke-static {p1, p4, v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v3

    return-object v3
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 2
    .parameter "scAddr"
    .parameter "destAddr"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "smsHeader"

    .prologue
    .line 324
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 325
    :cond_0
    const/4 v1, 0x0

    .line 331
    :goto_0
    return-object v1

    .line 328
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 329
    .local v0, uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    iput-object p2, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 330
    iput-object p4, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 331
    invoke-static {p1, p3, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v1

    goto :goto_0
.end method

.method public static getTPLayerLengthForPDU(Ljava/lang/String;)I
    .locals 2
    .parameter "pdu"

    .prologue
    .line 289
    const-string v0, "CDMA"

    const-string v1, "getTPLayerLengthForPDU: is not supported in CDMA mode."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const/4 v0, 0x0

    return v0
.end method

.method public static isCMASMessage()Z
    .locals 3

    .prologue
    .line 1104
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCMASMessage in SmsMessage.java from cdma, bIsCMAS = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/telephony/cdma/SmsMessage;->bIsCMAS:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    sget-boolean v0, Lcom/android/internal/telephony/cdma/SmsMessage;->bIsCMAS:Z

    return v0
.end method

.method public static newFromCDS(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage;
    .locals 2
    .parameter "line"

    .prologue
    .line 147
    const-string v0, "CDMA"

    const-string/jumbo v1, "newFromCDS: is not supported in CDMA mode."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/4 v0, 0x0

    return-object v0
.end method

.method public static newFromCMT([Ljava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage;
    .locals 2
    .parameter "lines"

    .prologue
    .line 131
    const-string v0, "CDMA"

    const-string/jumbo v1, "newFromCMT: is not supported in CDMA mode."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const/4 v0, 0x0

    return-object v0
.end method

.method public static newFromCMTI(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage;
    .locals 2
    .parameter "line"

    .prologue
    .line 139
    const-string v0, "CDMA"

    const-string/jumbo v1, "newFromCMTI: is not supported in CDMA mode."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/4 v0, 0x0

    return-object v0
.end method

.method public static newFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/cdma/SmsMessage;
    .locals 9
    .parameter "p"

    .prologue
    .line 157
    new-instance v7, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-direct {v7}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>()V

    .line 158
    .local v7, msg:Lcom/android/internal/telephony/cdma/SmsMessage;
    new-instance v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v5}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 159
    .local v5, env:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 166
    .local v0, addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 168
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v8

    if-eqz v8, :cond_1

    .line 169
    const/4 v8, 0x1

    iput v8, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 179
    :goto_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    .line 182
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 183
    .local v1, addressDigitMode:I
    and-int/lit16 v8, v1, 0xff

    int-to-byte v8, v8

    iput v8, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 184
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    iput v8, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 185
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    .line 186
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    iput v8, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    .line 187
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 188
    .local v2, count:B
    iput v2, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 189
    new-array v4, v2, [B

    .line 191
    .local v4, data:[B
    const/4 v6, 0x0

    .local v6, index:I
    :goto_1
    if-ge v6, v2, :cond_3

    .line 192
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v8

    aput-byte v8, v4, v6

    .line 195
    if-nez v1, :cond_0

    .line 196
    aget-byte v8, v4, v6

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->convertDtmfToAscii(B)B

    move-result v8

    aput-byte v8, v4, v6

    .line 191
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 172
    .end local v1           #addressDigitMode:I
    .end local v2           #count:B
    .end local v4           #data:[B
    .end local v6           #index:I
    :cond_1
    iget v8, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    if-nez v8, :cond_2

    .line 174
    const/4 v8, 0x2

    iput v8, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    goto :goto_0

    .line 176
    :cond_2
    const/4 v8, 0x0

    iput v8, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    goto :goto_0

    .line 200
    .restart local v1       #addressDigitMode:I
    .restart local v2       #count:B
    .restart local v4       #data:[B
    .restart local v6       #index:I
    :cond_3
    iput-object v4, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    .line 203
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 204
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 205
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 207
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v2, :cond_4

    .line 208
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    .line 207
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 219
    :cond_4
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 220
    .local v3, countInt:I
    if-lez v3, :cond_6

    .line 221
    new-array v4, v3, [B

    .line 223
    const/4 v6, 0x0

    :goto_3
    if-ge v6, v3, :cond_5

    .line 224
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v8

    aput-byte v8, v4, v6

    .line 223
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 226
    :cond_5
    iput-object v4, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 231
    :cond_6
    iput-object v0, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 232
    iput-object v0, v7, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 233
    iput-object v5, v7, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .line 236
    invoke-direct {v7}, Lcom/android/internal/telephony/cdma/SmsMessage;->createPdu()V

    .line 238
    return-object v7
.end method

.method private parsePdu([B)V
    .locals 10
    .parameter "pdu"

    .prologue
    .line 660
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 661
    .local v1, bais:Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 664
    .local v3, dis:Ljava/io/DataInputStream;
    new-instance v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v4}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 665
    .local v4, env:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 668
    .local v0, addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 669
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 670
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    .line 672
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    iput v7, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 673
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    iput v7, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 674
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    iput v7, v0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    .line 675
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    iput v7, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    .line 677
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    .line 678
    .local v6, length:B
    iput v6, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 679
    new-array v7, v6, [B

    iput-object v7, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    .line 680
    iget-object v7, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8, v6}, Ljava/io/DataInputStream;->read([BII)I

    .line 682
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    .line 684
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    iput-byte v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->replySeqNo:B

    .line 685
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    iput-byte v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    .line 686
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    iput-byte v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->causeCode:B

    .line 689
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 690
    .local v2, bearerDataLength:I
    new-array v7, v2, [B

    iput-object v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 691
    iget-object v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8, v2}, Ljava/io/DataInputStream;->read([BII)I

    .line 692
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 698
    .end local v2           #bearerDataLength:I
    .end local v6           #length:B
    :goto_0
    iput-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 699
    iput-object v0, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 700
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .line 701
    iput-object p1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mPdu:[B

    .line 703
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseSms()V

    .line 704
    return-void

    .line 693
    :catch_0
    move-exception v7

    move-object v5, v7

    .line 694
    .local v5, ex:Ljava/lang/Exception;
    const-string v7, "CDMA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "createFromPdu: conversion from byte array to object failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 5
    .parameter "destAddrStr"
    .parameter "statusReportRequested"
    .parameter "userData"

    .prologue
    .line 856
    const/16 v2, 0x1002

    .line 861
    .local v2, teleservice:I
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    .line 862
    .local p0, dstAddr:Ljava/lang/String;
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NANP : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v1

    .line 871
    .local v1, destAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    if-nez v1, :cond_0

    const/4 p0, 0x0

    move-object p1, p0

    move p0, v2

    .line 940
    .end local v1           #destAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v2           #teleservice:I
    .end local p1
    .end local p2
    .local p0, teleservice:I
    :goto_0
    return-object p1

    .line 873
    .restart local v1       #destAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v2       #teleservice:I
    .local p0, dstAddr:Ljava/lang/String;
    .restart local p1
    .restart local p2
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    .line 874
    .local v0, bearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    const/4 p0, 0x2

    iput p0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    .line 876
    .end local p0           #dstAddr:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNextMessageId()I

    move-result p0

    iput p0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    .line 878
    iput-boolean p1, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    .line 879
    const/4 p0, 0x0

    iput-boolean p0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    .line 880
    const/4 p0, 0x0

    iput-boolean p0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    .line 881
    const/4 p0, 0x0

    iput-boolean p0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    .line 883
    iput-object p2, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    .line 885
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode(Lcom/android/internal/telephony/cdma/sms/BearerData;)[B

    move-result-object p2

    .line 886
    .local p2, encodedBearerData:[B
    const-string p0, "CDMA:SMS"

    const/4 p1, 0x2

    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .end local p1
    move-result p0

    if-eqz p0, :cond_1

    .line 887
    const-string p0, "CDMA"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MO (encoded) BearerData = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    const-string p0, "CDMA"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MO raw BearerData = \'"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, "\'"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    :cond_1
    if-nez p2, :cond_2

    const/4 p0, 0x0

    move-object p1, p0

    move p0, v2

    .end local v2           #teleservice:I
    .local p0, teleservice:I
    goto :goto_0

    .line 893
    .end local p0           #teleservice:I
    .restart local v2       #teleservice:I
    :cond_2
    iget-boolean p0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    if-eqz p0, :cond_3

    const/16 p0, 0x1005

    move v3, p0

    .line 896
    .end local v2           #teleservice:I
    .local v3, teleservice:I
    :goto_1
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 897
    .local v2, envelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    const/4 p0, 0x0

    iput p0, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 898
    iput v3, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 899
    iput-object v1, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->destAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 900
    const/4 p0, 0x1

    iput p0, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    .line 901
    iput-object p2, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 913
    :try_start_0
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    const/16 p1, 0x64

    invoke-direct {p0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 914
    .local p0, baos:Ljava/io/ByteArrayOutputStream;
    new-instance p1, Ljava/io/DataOutputStream;

    invoke-direct {p1, p0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 915
    .local p1, dos:Ljava/io/DataOutputStream;
    iget v2, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .end local v2           #envelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 916
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 917
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 918
    iget v2, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 919
    iget v2, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 920
    iget v2, v1, Lcom/android/internal/telephony/SmsAddress;->ton:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 921
    iget v2, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 922
    iget v2, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 923
    iget-object v2, v1, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    const/4 v4, 0x0

    iget-object v1, v1, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    .end local v1           #destAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    array-length v1, v1

    invoke-virtual {p1, v2, v4, v1}, Ljava/io/DataOutputStream;->write([BII)V

    .line 925
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 926
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 927
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 928
    array-length v1, p2

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 929
    const/4 v1, 0x0

    array-length v2, p2

    invoke-virtual {p1, p2, v1, v2}, Ljava/io/DataOutputStream;->write([BII)V

    .line 930
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V

    .line 932
    new-instance p1, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    .end local p1           #dos:Ljava/io/DataOutputStream;
    invoke-direct {p1}, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;-><init>()V

    .line 933
    .local p1, pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .end local p0           #baos:Ljava/io/ByteArrayOutputStream;
    iput-object p0, p1, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    .line 934
    const/4 p0, 0x0

    iput-object p0, p1, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    .line 935
    iget p0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    iput p0, p1, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->mMsgRef:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move p0, v3

    .line 936
    .end local v3           #teleservice:I
    .local p0, teleservice:I
    goto/16 :goto_0

    .line 893
    .end local p0           #teleservice:I
    .end local p1           #pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .restart local v1       #destAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .local v2, teleservice:I
    :cond_3
    const/16 p0, 0x1002

    move v3, p0

    goto :goto_1

    .line 937
    .end local v1           #destAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v2           #teleservice:I
    .restart local v3       #teleservice:I
    :catch_0
    move-exception p0

    .line 938
    .local p0, ex:Ljava/io/IOException;
    const-string p1, "CDMA"

    new-instance p2, Ljava/lang/StringBuilder;

    .end local p2           #encodedBearerData:[B
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "creating SubmitPdu failed: "

    .end local v0           #bearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #ex:Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    const/4 p0, 0x0

    move-object p1, p0

    move p0, v3

    .end local v3           #teleservice:I
    .local p0, teleservice:I
    goto/16 :goto_0
.end method


# virtual methods
.method protected extractEmailAddressFromMessageBody()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 1067
    const/4 v0, 0x0

    .local v0, atSymbol:I
    const/4 v2, 0x0

    .line 1070
    .local v2, space:I
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 1071
    if-ne v2, v5, :cond_1

    .line 1091
    :cond_0
    :goto_0
    return-void

    .line 1075
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    const/16 v4, 0x40

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1076
    if-eq v0, v5, :cond_0

    if-gt v0, v2, :cond_0

    .line 1080
    iget-object v3, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/SmsMessageBase;->emailFrom:Ljava/lang/String;

    .line 1082
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/SmsMessageBase;->pseudoSubject:Ljava/lang/String;

    .line 1083
    iget-object v3, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/SmsMessageBase;->emailBody:Ljava/lang/String;

    .line 1085
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/telephony/SmsMessageBase;->isEmail:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1086
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 1087
    .local v1, ex:Ljava/lang/Exception;
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "extractEmailAddressFromMessageBody: exception space="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", atSymbol="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method getIncomingSmsFingerprint()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1035
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1037
    .local v0, output:Ljava/io/ByteArrayOutputStream;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1038
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iget-object v1, v1, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iget-object v2, v2, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1039
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1041
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public getMessageClass()Landroid/telephony/SmsMessage$MessageClass;
    .locals 1

    .prologue
    .line 818
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayMode:I

    if-nez v0, :cond_0

    .line 819
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    .line 821
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->UNKNOWN:Landroid/telephony/SmsMessage$MessageClass;

    goto :goto_0
.end method

.method public getMessageIdentifier()I
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    if-eqz v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    .line 624
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMessagePriority()I
    .locals 2

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1097
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    .line 1099
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getNumOfVoicemails()I
    .locals 1

    .prologue
    .line 1024
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    return v0
.end method

.method public getProtocolIdentifier()I
    .locals 2

    .prologue
    .line 505
    const-string v0, "CDMA"

    const-string v1, "getProtocolIdentifier: is not supported in CDMA mode."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    const/4 v0, 0x0

    return v0
.end method

.method public getServiceCategory()I
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 556
    iget v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    shl-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public getTeleService()I
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    return v0
.end method

.method public isCphsMwiMessage()Z
    .locals 2

    .prologue
    .line 523
    const-string v0, "CDMA"

    const-string v1, "isCphsMwiMessage: is not supported in CDMA mode."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const/4 v0, 0x0

    return v0
.end method

.method public isMWIClearMessage()Z
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMWISetMessage()Z
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMwiDontStore()Z
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReplace()Z
    .locals 2

    .prologue
    .line 514
    const-string v0, "CDMA"

    const-string v1, "isReplace: is not supported in CDMA mode."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    const/4 v0, 0x0

    return v0
.end method

.method public isReplyPathPresent()Z
    .locals 2

    .prologue
    .line 568
    const-string v0, "CDMA"

    const-string v1, "isReplyPathPresent: is not supported in CDMA mode."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    const/4 v0, 0x0

    return v0
.end method

.method public isStatusReportMessage()Z
    .locals 2

    .prologue
    .line 561
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected parseSms()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v3, "CDMA"

    .line 712
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    const/high16 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 713
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    .line 714
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    if-eqz v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    aget-byte v1, v1, v5

    and-int/lit16 v1, v1, 0xff

    iput v1, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    .line 812
    :cond_0
    :goto_0
    return-void

    .line 732
    :cond_1
    const-string v0, "CDMA"

    const-string/jumbo v0, "parseSms: CMAS Check"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    sput-boolean v5, Lcom/android/internal/telephony/cdma/SmsMessage;->bIsCMAS:Z

    .line 734
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    const/16 v1, 0x1000

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    const/16 v1, 0x1004

    if-gt v0, v1, :cond_2

    .line 736
    const-string v0, "CDMA"

    const-string/jumbo v0, "parseSms: CMAS=TRUE"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    sput-boolean v4, Lcom/android/internal/telephony/cdma/SmsMessage;->bIsCMAS:Z

    .line 738
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iput v4, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 741
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    sget-boolean v1, Lcom/android/internal/telephony/cdma/SmsMessage;->bIsCMAS:Z

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode([BZ)Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    .line 744
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    if-nez v0, :cond_3

    .line 745
    const-string v0, "CDMA"

    const-string v0, "MT (decoded) BearerData : null"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 749
    :cond_3
    sget-boolean v0, Lcom/android/internal/telephony/cdma/SmsMessage;->bIsCMAS:Z

    if-ne v0, v4, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->cmasData:Lcom/android/internal/telephony/cdma/sms/CMASdata;

    if-eqz v0, :cond_4

    .line 750
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->cmasData:Lcom/android/internal/telephony/cdma/sms/CMASdata;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    iput v1, v0, Lcom/android/internal/telephony/cdma/sms/CMASdata;->serviceCategory:I

    .line 751
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->cmasData:Lcom/android/internal/telephony/cdma/sms/CMASdata;

    sput-object v0, Lcom/android/internal/telephony/cdma/SmsMessage;->mCmasData:Lcom/android/internal/telephony/cdma/sms/CMASdata;

    .line 754
    :cond_4
    const-string v0, "CDMA:SMS"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 755
    const-string v0, "CDMA"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MT raw BearerData = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    invoke-static {v1}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    const-string v0, "CDMA"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MT (decoded) BearerData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    const/16 v1, 0x1006

    if-ne v0, v1, :cond_6

    .line 761
    const-string v0, "CDMA"

    const-string v0, "Set SCPT data here"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->scptData:Lcom/android/internal/telephony/cdma/sms/SCPTData;

    sput-object v0, Lcom/android/internal/telephony/cdma/SmsMessage;->mScptData:Lcom/android/internal/telephony/cdma/sms/SCPTData;

    .line 765
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    iput v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageRef:I

    .line 766
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    if-eqz v0, :cond_7

    .line 767
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iput-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->userData:[B

    .line 768
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iput-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 769
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    .line 772
    :cond_7
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_8

    .line 773
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v2, v2, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v1, v0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    .line 778
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    if-eqz v0, :cond_9

    .line 779
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->toMillis(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->scTimeMillis:J

    .line 782
    :cond_9
    const-string v0, "CDMA"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMS SC timestamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->scTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_d

    .line 793
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatusSet:Z

    if-nez v0, :cond_c

    .line 794
    const-string v0, "CDMA"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELIVERY_ACK message without msgStatus ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->userData:[B

    if-nez v1, :cond_b

    const-string v1, "also missing"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " userData)."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    iput v5, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    .line 806
    :cond_a
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 808
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseMessageBody()V

    goto/16 :goto_0

    .line 794
    :cond_b
    const-string v1, "does have"

    goto :goto_1

    .line 799
    :cond_c
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->errorClass:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    .line 800
    iget v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatus:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    goto :goto_2

    .line 802
    :cond_d
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    if-eq v0, v4, :cond_a

    .line 803
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v2, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 809
    :cond_e
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->userData:[B

    if-eqz v0, :cond_0

    goto/16 :goto_0
.end method
