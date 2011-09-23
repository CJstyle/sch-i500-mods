.class final Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;
.super Lcom/android/internal/telephony/SMSDispatcher;
.source "CdmaSMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CDMA"


# instance fields
.field private mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

.field private mLastAcknowledgedSmsFingerprint:[B

.field private mLastDispatchedSmsFingerprint:[B

.field private mSMSSyncSender:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;

.field private mSMSSyncSenderThread:Landroid/os/HandlerThread;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 0
    .parameter "phone"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 81
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)Lcom/android/internal/telephony/CommandsInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)Lcom/android/internal/telephony/CommandsInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)Lcom/android/internal/telephony/CommandsInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method private checkOMADMwappush([BI)Z
    .locals 10
    .parameter "origPdu"
    .parameter "index"

    .prologue
    const/4 v8, 0x0

    const-string v9, "CDMA"

    .line 826
    add-int/lit8 p2, p2, 0x4

    .line 827
    array-length v6, p1

    sub-int/2addr v6, p2

    new-array v4, v6, [B

    .line 828
    .local v4, omaPdu:[B
    array-length v6, v4

    invoke-static {p1, p2, v4, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 829
    const-string v6, "CDMA"

    const-string v6, "checkOMADMwappush()"

    invoke-static {v9, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    new-instance v5, Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-direct {v5, v4}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    .line 831
    .local v5, pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;
    const/4 p2, 0x2

    .line 833
    invoke-virtual {v5, p2}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 834
    const-string v6, "CDMA"

    const-string v6, "Received PDU. Header Length error."

    invoke-static {v9, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    .line 851
    :goto_0
    return v6

    .line 837
    :cond_0
    invoke-virtual {v5}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v6

    long-to-int v1, v6

    .line 838
    .local v1, headerLength:I
    invoke-virtual {v5}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v6

    add-int/2addr p2, v6

    .line 839
    move v2, p2

    .line 840
    .local v2, headerStartIndex:I
    invoke-virtual {v5, p2}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 841
    const-string v6, "CDMA"

    const-string v6, "Received PDU. Header Content-Type error."

    invoke-static {v9, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    .line 842
    goto :goto_0

    .line 845
    :cond_1
    invoke-virtual {v5}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v3

    .line 846
    .local v3, mimeType:Ljava/lang/String;
    if-nez v3, :cond_2

    .line 847
    invoke-virtual {v5}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v6

    long-to-int v0, v6

    .line 848
    .local v0, binaryContentType:I
    const/16 v6, 0x44

    if-ne v0, v6, :cond_2

    .line 849
    const/4 v6, 0x1

    goto :goto_0

    .end local v0           #binaryContentType:I
    :cond_2
    move v6, v8

    .line 851
    goto :goto_0
.end method

.method private handleCdmaStatusReport(Lcom/android/internal/telephony/cdma/SmsMessage;)V
    .locals 7
    .parameter "sms"

    .prologue
    .line 97
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 98
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 99
    .local v4, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget v5, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    iget v6, p1, Lcom/android/internal/telephony/cdma/SmsMessage;->messageRef:I

    if-ne v5, v6, :cond_1

    .line 101
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 102
    iget-object v3, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    .line 103
    .local v3, intent:Landroid/app/PendingIntent;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 104
    .local v1, fillIn:Landroid/content/Intent;
    const-string/jumbo v5, "pdu"

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPdu()[B

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 106
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v6, -0x1

    invoke-virtual {v3, v5, v6, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .end local v1           #fillIn:Landroid/content/Intent;
    .end local v3           #intent:Landroid/app/PendingIntent;
    .end local v4           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_0
    :goto_1
    return-void

    .line 97
    .restart local v4       #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 107
    .restart local v1       #fillIn:Landroid/content/Intent;
    .restart local v3       #intent:Landroid/app/PendingIntent;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method private resultToCause(I)I
    .locals 1
    .parameter "rc"

    .prologue
    .line 809
    packed-switch p1, :pswitch_data_0

    .line 820
    :pswitch_0
    const/16 v0, 0x60

    :goto_0
    return v0

    .line 813
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 815
    :pswitch_2
    const/16 v0, 0x23

    goto :goto_0

    .line 817
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 809
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 4
    .parameter "success"
    .parameter "result"
    .parameter "response"

    .prologue
    .line 777
    const-string/jumbo v2, "ril.cdma.inecmmode"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 778
    .local v1, inEcm:Ljava/lang/String;
    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 791
    :cond_0
    :goto_0
    return-void

    .line 782
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v2, :cond_0

    .line 783
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->resultToCause(I)I

    move-result v0

    .line 784
    .local v0, causeCode:I
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p1, v0, p3}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V

    .line 786
    if-nez v0, :cond_2

    .line 787
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastDispatchedSmsFingerprint:[B

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastAcknowledgedSmsFingerprint:[B

    .line 789
    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastDispatchedSmsFingerprint:[B

    goto :goto_0
.end method

.method protected activateCellBroadcastSms(ILandroid/os/Message;)V
    .locals 2
    .parameter "activate"
    .parameter "response"

    .prologue
    .line 795
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0, v1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setCdmaBroadcastActivation(ZLandroid/os/Message;)V

    .line 796
    return-void

    .line 795
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 20
    .parameter "smsb"

    .prologue
    .line 122
    if-nez p1, :cond_0

    .line 123
    const-string v17, "CDMA"

    const-string v18, "dispatchMessage: message is null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const/16 v17, 0x2

    .line 265
    .end local p1
    :goto_0
    return v17

    .line 134
    .restart local p1
    :cond_0
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/internal/telephony/cdma/SmsMessage;

    move-object v11, v0

    .line 135
    .local v11, sms:Lcom/android/internal/telephony/cdma/SmsMessage;
    invoke-virtual {v11}, Lcom/android/internal/telephony/cdma/SmsMessage;->getIncomingSmsFingerprint()[B

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastDispatchedSmsFingerprint:[B

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastAcknowledgedSmsFingerprint:[B

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastDispatchedSmsFingerprint:[B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastAcknowledgedSmsFingerprint:[B

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 138
    const/16 v17, 0x1

    goto :goto_0

    .line 141
    :cond_1
    invoke-virtual {v11}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseSms()V

    .line 142
    invoke-virtual {v11}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTeleService()I

    move-result v14

    .line 143
    .local v14, teleService:I
    const/4 v7, 0x0

    .line 145
    .local v7, handled:Z
    const/16 v17, 0x1003

    move/from16 v0, v17

    move v1, v14

    if-eq v0, v1, :cond_2

    const/high16 v17, 0x4

    move/from16 v0, v17

    move v1, v14

    if-ne v0, v1, :cond_5

    .line 148
    :cond_2
    invoke-virtual {v11}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNumOfVoicemails()I

    move-result v16

    .line 149
    .local v16, voicemailCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getVoiceMessageCount()I

    move-result v10

    .line 150
    .local v10, preVoicemailCount:I
    const-string v17, "CDMA"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Voicemail count="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    move v0, v10

    move/from16 v1, v16

    if-eq v0, v1, :cond_3

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 p1, v0

    check-cast p1, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 155
    .local v13, sp:Landroid/content/SharedPreferences;
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 156
    .local v5, editor:Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v17, "vm_count_key_cdma"

    move-object v0, v5

    move-object/from16 v1, v17

    move/from16 v2, v16

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 157
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 p1, v0

    check-cast p1, Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->updateMessageWaitingIndicator(I)V

    .line 160
    .end local v5           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v13           #sp:Landroid/content/SharedPreferences;
    :cond_3
    const/4 v7, 0x1

    .line 174
    .end local v10           #preVoicemailCount:I
    .end local v16           #voicemailCount:I
    :cond_4
    :goto_1
    if-eqz v7, :cond_8

    .line 175
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 161
    .restart local p1
    :cond_5
    const/16 v17, 0x1001

    move/from16 v0, v17

    move v1, v14

    if-eq v0, v1, :cond_6

    const/16 v17, 0x1002

    move/from16 v0, v17

    move v1, v14

    if-eq v0, v1, :cond_6

    const/16 v17, 0x1005

    move/from16 v0, v17

    move v1, v14

    if-ne v0, v1, :cond_7

    :cond_6
    invoke-virtual {v11}, Lcom/android/internal/telephony/cdma/SmsMessage;->isStatusReportMessage()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 165
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->handleCdmaStatusReport(Lcom/android/internal/telephony/cdma/SmsMessage;)V

    .line 166
    const/4 v7, 0x1

    goto :goto_1

    .line 167
    :cond_7
    invoke-virtual {v11}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v17

    if-nez v17, :cond_4

    .line 169
    const-string v17, "CDMA"

    const-string v18, "Received SMS without user data"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/4 v7, 0x1

    goto :goto_1

    .line 179
    .end local p1
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/provider/MMSDomesticHelper;->isDomesticTestMode(Landroid/content/Context;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual {v11}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v18

    const-string v19, "0000000000"

    invoke-static/range {v17 .. v19}, Landroid/provider/MMSDomesticHelper;->checkDomesticWapSMS(Landroid/content/Context;[BLjava/lang/String;)Landroid/provider/MMSDomesticHelper;

    move-result-object v8

    .line 181
    .local v8, mmsDomesticHelper:Landroid/provider/MMSDomesticHelper;
    if-eqz v8, :cond_9

    .line 182
    const-string v17, "MMSDomesticHelper"

    const-string v18, "checkDomesticWapSMS : Success"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    move-object v0, v8

    iget-object v0, v0, Landroid/provider/MMSDomesticHelper;->mUserData:[B

    move-object/from16 v17, v0

    move-object v0, v8

    iget v0, v0, Landroid/provider/MMSDomesticHelper;->mMessageRef:I

    move/from16 v18, v0

    move-object v0, v8

    iget-object v0, v0, Landroid/provider/MMSDomesticHelper;->mOriginatingAddress:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->processDomesticCdmaWapPdu([BILjava/lang/String;)I

    move-result v17

    goto/16 :goto_0

    .line 188
    .end local v8           #mmsDomesticHelper:Landroid/provider/MMSDomesticHelper;
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mStorageAvailable:Z

    move/from16 v17, v0

    if-nez v17, :cond_a

    invoke-virtual {v11}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v17

    sget-object v18, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_a

    .line 192
    const/16 v17, 0x3

    goto/16 :goto_0

    .line 195
    :cond_a
    const/16 v17, 0x1004

    move/from16 v0, v17

    move v1, v14

    if-ne v0, v1, :cond_b

    .line 196
    invoke-virtual {v11}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v17

    move-object v0, v11

    iget v0, v0, Lcom/android/internal/telephony/cdma/SmsMessage;->messageRef:I

    move/from16 v18, v0

    invoke-virtual {v11}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->processCdmaWapPdu([BILjava/lang/String;)I

    move-result v17

    goto/16 :goto_0

    .line 203
    :cond_b
    const/16 v17, 0x1001

    move/from16 v0, v17

    move v1, v14

    if-eq v0, v1, :cond_c

    const/16 v17, 0x1002

    move/from16 v0, v17

    move v1, v14

    if-eq v0, v1, :cond_c

    const/16 v17, 0x1005

    move/from16 v0, v17

    move v1, v14

    if-eq v0, v1, :cond_c

    .line 206
    const/16 v17, 0x4

    goto/16 :goto_0

    .line 220
    :cond_c
    invoke-virtual {v11}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v12

    .line 223
    .local v12, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    if-eqz v12, :cond_e

    move-object v0, v12

    iget-object v0, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    move-object/from16 v17, v0

    if-eqz v17, :cond_e

    const/16 v17, 0xb84

    move-object v0, v12

    iget-object v0, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    .line 224
    const/4 v6, 0x1

    .line 226
    .local v6, enabled:Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v18, "roaming_wap_push_enabled"

    invoke-static/range {v17 .. v18}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v15

    .line 227
    .local v15, value:I
    const/16 v17, 0x1

    move/from16 v0, v17

    move v1, v15

    if-ne v0, v1, :cond_d

    const/16 v17, 0x1

    move/from16 v6, v17

    .line 228
    :goto_2
    const-string v17, "CDMA"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "isRoamingPushEnabled : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    .end local v15           #value:I
    :goto_3
    if-nez v6, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v17

    if-eqz v17, :cond_e

    .line 233
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 227
    .restart local v15       #value:I
    :cond_d
    const/16 v17, 0x0

    move/from16 v6, v17

    goto :goto_2

    .line 229
    .end local v15           #value:I
    :catch_0
    move-exception v17

    move-object/from16 v4, v17

    .line 230
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 245
    .end local v4           #e:Ljava/lang/Exception;
    .end local v6           #enabled:Z
    :cond_e
    if-eqz v12, :cond_f

    move-object v0, v12

    iget-object v0, v0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    move-object/from16 v17, v0

    if-nez v17, :cond_12

    .line 247
    :cond_f
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [[B

    move-object v9, v0

    .line 248
    .local v9, pdus:[[B
    const/16 v17, 0x0

    invoke-virtual {v11}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPdu()[B

    move-result-object v18

    aput-object v18, v9, v17

    .line 250
    if-eqz v12, :cond_11

    move-object v0, v12

    iget-object v0, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    move-object/from16 v17, v0

    if-eqz v17, :cond_11

    .line 251
    move-object v0, v12

    iget-object v0, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    move/from16 v17, v0

    const/16 v18, 0xb84

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_10

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    move-object/from16 v17, v0

    invoke-virtual {v11}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([B)I

    move-result v17

    goto/16 :goto_0

    .line 256
    :cond_10
    move-object v0, v12

    iget-object v0, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move-object v1, v9

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->dispatchPortAddressedPdus([[BI)V

    .line 262
    :goto_4
    const/16 v17, -0x1

    goto/16 :goto_0

    .line 260
    :cond_11
    move-object/from16 v0, p0

    move-object v1, v9

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->dispatchPdus([[B)V

    goto :goto_4

    .line 265
    .end local v9           #pdus:[[B
    :cond_12
    move-object v0, v12

    iget-object v0, v0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    move-object/from16 v17, v0

    move-object v0, v12

    iget-object v0, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object v1, v11

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->processMessagePart(Lcom/android/internal/telephony/SmsMessageBase;Lcom/android/internal/telephony/SmsHeader$ConcatRef;Lcom/android/internal/telephony/SmsHeader$PortAddrs;)I

    move-result v17

    goto/16 :goto_0
.end method

.method protected getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 800
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getCdmaBroadcastConfig(Landroid/os/Message;)V

    .line 801
    return-void
.end method

.method public getStorageState()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mStorageAvailable:Z

    return v0
.end method

.method protected handleStatusReport(Landroid/os/AsyncResult;)V
    .locals 2
    .parameter "ar"

    .prologue
    .line 93
    const-string v0, "CDMA"

    const-string v1, "handleStatusReport is a special GSM function, should never be called in CDMA!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void
.end method

.method protected processCdmaWapPdu([BILjava/lang/String;)I
    .locals 30
    .parameter "pdu"
    .parameter "referenceNumber"
    .parameter "address"

    .prologue
    .line 282
    const/16 v18, 0x0

    .line 285
    .local v18, index:I
    const/16 v26, 0x0

    .line 286
    .local v26, sourcePort:I
    const/4 v15, 0x0

    .line 288
    .local v15, destinationPort:I
    add-int/lit8 v19, v18, 0x1

    .end local v18           #index:I
    .local v19, index:I
    aget-byte v20, p1, v18

    .line 289
    .local v20, msgType:I
    if-eqz v20, :cond_0

    .line 290
    const-string v5, "CDMA"

    const-string v6, "Received a WAP SMS which is not WDP. Discard."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    const/4 v5, 0x1

    move/from16 v18, v19

    .line 422
    .end local v19           #index:I
    .restart local v18       #index:I
    :goto_0
    return v5

    .line 293
    .end local v18           #index:I
    .restart local v19       #index:I
    :cond_0
    add-int/lit8 v18, v19, 0x1

    .end local v19           #index:I
    .restart local v18       #index:I
    aget-byte v27, p1, v19

    .line 294
    .local v27, totalSegments:I
    add-int/lit8 v19, v18, 0x1

    .end local v18           #index:I
    .restart local v19       #index:I
    aget-byte v24, p1, v18

    .line 308
    .local v24, segment:I
    new-instance v29, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "reference_number ="

    move-object/from16 v0, v29

    move-object v1, v5

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 309
    .local v29, where:Ljava/lang/StringBuilder;
    move-object/from16 v0, v29

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 310
    const-string v5, " AND address = ?"

    move-object/from16 v0, v29

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    const/4 v5, 0x1

    new-array v9, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p3, v9, v5

    .line 313
    .local v9, whereArgs:[Ljava/lang/String;
    const-string v5, "CDMA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received WAP PDU. Type = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", originator = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", src-port = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", dst-port = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", ID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", segment# = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const/16 v23, 0x0

    check-cast v23, [[B

    .line 318
    .local v23, pdus:[[B
    const/4 v11, 0x0

    .line 320
    .local v11, cursor:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mRawUri:Landroid/net/Uri;

    move-object v6, v0

    sget-object v7, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->RAW_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 321
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 322
    .local v12, cursorCount:I
    const/4 v5, 0x1

    sub-int v5, v27, v5

    if-eq v12, v5, :cond_2

    .line 324
    new-instance v28, Landroid/content/ContentValues;

    invoke-direct/range {v28 .. v28}, Landroid/content/ContentValues;-><init>()V

    .line 325
    .local v28, values:Landroid/content/ContentValues;
    const-string v5, "date"

    new-instance v6, Ljava/lang/Long;

    const-wide/16 v7, 0x0

    invoke-direct {v6, v7, v8}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v28

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 326
    const-string/jumbo v5, "pdu"

    move-object/from16 v0, p1

    array-length v0, v0

    move v6, v0

    sub-int v6, v6, v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    move v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/HexDump;->toHexString([BII)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v28

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const-string v5, "address"

    move-object/from16 v0, v28

    move-object v1, v5

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const-string/jumbo v5, "reference_number"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v28

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 329
    const-string v5, "count"

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v28

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 330
    const-string/jumbo v5, "sequence"

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v28

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 331
    const-string v5, "destination_port"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v28

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mRawUri:Landroid/net/Uri;

    move-object v6, v0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    const/4 v5, 0x1

    .line 370
    if-eqz v11, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_1
    move/from16 v18, v19

    .line 335
    .end local v19           #index:I
    .restart local v18       #index:I
    goto/16 :goto_0

    .line 339
    .end local v18           #index:I
    .end local v28           #values:Landroid/content/ContentValues;
    .restart local v19       #index:I
    :cond_2
    :try_start_1
    const-string/jumbo v5, "pdu"

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 340
    .local v22, pduColumn:I
    const-string/jumbo v5, "sequence"

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 342
    .local v25, sequenceColumn:I
    move/from16 v0, v27

    new-array v0, v0, [[B

    move-object/from16 v23, v0

    .line 343
    const/16 v17, 0x0

    .local v17, i:I
    :goto_1
    move/from16 v0, v17

    move v1, v12

    if-ge v0, v1, :cond_3

    .line 344
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 345
    move-object v0, v11

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    long-to-int v13, v5

    .line 354
    .local v13, cursorSequence:I
    move-object v0, v11

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, v23, v13

    .line 343
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 359
    .end local v13           #cursorSequence:I
    :cond_3
    move-object/from16 v0, p1

    array-length v0, v0

    move v5, v0

    sub-int v5, v5, v19

    new-array v5, v5, [B

    aput-object v5, v23, v24

    .line 360
    aget-object v5, v23, v24

    const/4 v6, 0x0

    move-object/from16 v0, p1

    array-length v0, v0

    move v7, v0

    sub-int v7, v7, v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object v2, v5

    move v3, v6

    move v4, v7

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mRawUri:Landroid/net/Uri;

    move-object v6, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 370
    if-eqz v11, :cond_4

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 374
    :cond_4
    new-instance v21, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v21 .. v21}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 375
    .local v21, output:Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x1

    move/from16 v0, v27

    move v1, v5

    if-ne v0, v1, :cond_7

    .line 378
    add-int/lit8 v18, v19, 0x1

    .end local v19           #index:I
    .restart local v18       #index:I
    aget-byte v5, p1, v19

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v26, v5, 0x8

    .line 379
    add-int/lit8 v19, v18, 0x1

    .end local v18           #index:I
    .restart local v19       #index:I
    aget-byte v5, p1, v18

    and-int/lit16 v5, v5, 0xff

    or-int v26, v26, v5

    .line 380
    add-int/lit8 v18, v19, 0x1

    .end local v19           #index:I
    .restart local v18       #index:I
    aget-byte v5, p1, v19

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v15, v5, 0x8

    .line 381
    add-int/lit8 v19, v18, 0x1

    .end local v18           #index:I
    .restart local v19       #index:I
    aget-byte v5, p1, v18

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v15, v5

    .line 382
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->checkOMADMwappush([BI)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 383
    add-int/lit8 v18, v19, 0x4

    .line 385
    .end local v19           #index:I
    .restart local v18       #index:I
    :goto_2
    move-object/from16 v0, p1

    array-length v0, v0

    move v5, v0

    sub-int v5, v5, v18

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move/from16 v2, v18

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 410
    :goto_3
    invoke-virtual/range {v21 .. v21}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v14

    .line 412
    .local v14, datagram:[B
    packed-switch v15, :pswitch_data_0

    .line 418
    const/4 v5, 0x1

    move v0, v5

    new-array v0, v0, [[B

    move-object/from16 v23, v0

    .line 419
    const/4 v5, 0x0

    aput-object v14, v23, v5

    .line 421
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->dispatchPortAddressedPdus([[BI)V

    .line 422
    const/4 v5, -0x1

    goto/16 :goto_0

    .line 366
    .end local v12           #cursorCount:I
    .end local v14           #datagram:[B
    .end local v17           #i:I
    .end local v18           #index:I
    .end local v21           #output:Ljava/io/ByteArrayOutputStream;
    .end local v22           #pduColumn:I
    .end local v25           #sequenceColumn:I
    .restart local v19       #index:I
    :catch_0
    move-exception v5

    move-object/from16 v16, v5

    .line 367
    .local v16, e:Landroid/database/SQLException;
    :try_start_2
    const-string v5, "CDMA"

    const-string v6, "Can\'t access multipart SMS database"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 368
    const/4 v5, 0x2

    .line 370
    if-eqz v11, :cond_5

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_5
    move/from16 v18, v19

    .line 368
    .end local v19           #index:I
    .restart local v18       #index:I
    goto/16 :goto_0

    .line 370
    .end local v16           #e:Landroid/database/SQLException;
    .end local v18           #index:I
    .restart local v19       #index:I
    :catchall_0
    move-exception v5

    if-eqz v11, :cond_6

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v5

    .line 390
    .restart local v12       #cursorCount:I
    .restart local v17       #i:I
    .restart local v21       #output:Ljava/io/ByteArrayOutputStream;
    .restart local v22       #pduColumn:I
    .restart local v25       #sequenceColumn:I
    :cond_7
    const/16 v17, 0x0

    :goto_4
    move/from16 v0, v17

    move/from16 v1, v27

    if-ge v0, v1, :cond_9

    .line 392
    if-nez v17, :cond_8

    .line 394
    aget-object v5, v23, v17

    const/4 v6, 0x0

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v26, v5, 0x8

    .line 395
    aget-object v5, v23, v17

    const/4 v6, 0x1

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    or-int v26, v26, v5

    .line 396
    aget-object v5, v23, v17

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v15, v5, 0x8

    .line 397
    aget-object v5, v23, v17

    const/4 v6, 0x3

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v15, v5

    .line 398
    aget-object v5, v23, v17

    const/4 v6, 0x4

    aget-object v7, v23, v17

    array-length v7, v7

    const/4 v8, 0x5

    sub-int/2addr v7, v8

    move-object/from16 v0, v21

    move-object v1, v5

    move v2, v6

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 390
    :goto_5
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 402
    :cond_8
    aget-object v5, v23, v17

    const/4 v6, 0x0

    aget-object v7, v23, v17

    array-length v7, v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    move-object/from16 v0, v21

    move-object v1, v5

    move v2, v6

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_5

    .line 415
    .end local v19           #index:I
    .restart local v14       #datagram:[B
    .restart local v18       #index:I
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    move-object v5, v0

    invoke-virtual {v5, v14}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([B)I

    move-result v5

    goto/16 :goto_0

    .end local v14           #datagram:[B
    .end local v18           #index:I
    .restart local v19       #index:I
    :cond_9
    move/from16 v18, v19

    .end local v19           #index:I
    .restart local v18       #index:I
    goto/16 :goto_3

    .end local v18           #index:I
    .restart local v19       #index:I
    :cond_a
    move/from16 v18, v19

    .end local v19           #index:I
    .restart local v18       #index:I
    goto/16 :goto_2

    .line 412
    nop

    :pswitch_data_0
    .packed-switch 0xb84
        :pswitch_0
    .end packed-switch
.end method

.method protected processDomesticCdmaWapPdu([BILjava/lang/String;)I
    .locals 30
    .parameter "pdu"
    .parameter "referenceNumber"
    .parameter "address"

    .prologue
    .line 431
    const/16 v18, 0x0

    .line 434
    .local v18, index:I
    const/16 v26, 0x0

    .line 435
    .local v26, sourcePort:I
    const/4 v14, 0x0

    .line 437
    .local v14, destinationPort:I
    add-int/lit8 v19, v18, 0x1

    .end local v18           #index:I
    .local v19, index:I
    aget-byte v20, p1, v18

    .line 438
    .local v20, msgType:I
    if-eqz v20, :cond_1

    .line 439
    const-string v4, "CDMA"

    const-string v5, "Received a WAP SMS which is not WDP. Discard."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const/4 v4, 0x1

    move/from16 v18, v19

    .line 544
    .end local v19           #index:I
    .restart local v18       #index:I
    :cond_0
    :goto_0
    return v4

    .line 442
    .end local v18           #index:I
    .restart local v19       #index:I
    :cond_1
    add-int/lit8 v18, v19, 0x1

    .end local v19           #index:I
    .restart local v18       #index:I
    aget-byte v27, p1, v19

    .line 443
    .local v27, totalSegments:I
    add-int/lit8 v19, v18, 0x1

    .end local v18           #index:I
    .restart local v19       #index:I
    aget-byte v24, p1, v18

    .line 446
    .local v24, segment:I
    if-nez v24, :cond_b

    .line 448
    add-int/lit8 v18, v19, 0x1

    .end local v19           #index:I
    .restart local v18       #index:I
    aget-byte v4, p1, v19

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v26, v4, 0x8

    .line 449
    add-int/lit8 v19, v18, 0x1

    .end local v18           #index:I
    .restart local v19       #index:I
    aget-byte v4, p1, v18

    and-int/lit16 v4, v4, 0xff

    or-int v26, v26, v4

    .line 450
    add-int/lit8 v18, v19, 0x1

    .end local v19           #index:I
    .restart local v18       #index:I
    aget-byte v4, p1, v19

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v14, v4, 0x8

    .line 451
    add-int/lit8 v19, v18, 0x1

    .end local v18           #index:I
    .restart local v19       #index:I
    aget-byte v4, p1, v18

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v14, v4

    move/from16 v18, v19

    .line 455
    .end local v19           #index:I
    .restart local v18       #index:I
    :goto_1
    new-instance v29, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "reference_number ="

    move-object/from16 v0, v29

    move-object v1, v4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 456
    .local v29, where:Ljava/lang/StringBuilder;
    move-object/from16 v0, v29

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 457
    const-string v4, " AND address = ?"

    move-object/from16 v0, v29

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p3, v8, v4

    .line 460
    .local v8, whereArgs:[Ljava/lang/String;
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received WAP PDU. Type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", originator = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", src-port = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", dst-port = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", segment# = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const/16 v23, 0x0

    check-cast v23, [[B

    .line 465
    .local v23, pdus:[[B
    const/4 v10, 0x0

    .line 467
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mRawUri:Landroid/net/Uri;

    move-object v5, v0

    sget-object v6, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->RAW_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 468
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 469
    .local v11, cursorCount:I
    const/4 v4, 0x1

    sub-int v4, v27, v4

    if-eq v11, v4, :cond_2

    .line 471
    new-instance v28, Landroid/content/ContentValues;

    invoke-direct/range {v28 .. v28}, Landroid/content/ContentValues;-><init>()V

    .line 472
    .local v28, values:Landroid/content/ContentValues;
    const-string v4, "date"

    new-instance v5, Ljava/lang/Long;

    const-wide/16 v6, 0x0

    invoke-direct {v5, v6, v7}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v28

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 473
    const-string/jumbo v4, "pdu"

    move-object/from16 v0, p1

    array-length v0, v0

    move v5, v0

    sub-int v5, v5, v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    move v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/HexDump;->toHexString([BII)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v28

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    const-string v4, "address"

    move-object/from16 v0, v28

    move-object v1, v4

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    const-string/jumbo v4, "reference_number"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v28

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 476
    const-string v4, "count"

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v28

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 477
    const-string/jumbo v4, "sequence"

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v28

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 478
    const-string v4, "destination_port"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v28

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mRawUri:Landroid/net/Uri;

    move-object v5, v0

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    const/4 v4, 0x1

    .line 509
    if-eqz v10, :cond_0

    .end local v11           #cursorCount:I
    .end local v28           #values:Landroid/content/ContentValues;
    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 486
    .restart local v11       #cursorCount:I
    :cond_2
    :try_start_1
    const-string/jumbo v4, "pdu"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 487
    .local v22, pduColumn:I
    const-string/jumbo v4, "sequence"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 489
    .local v25, sequenceColumn:I
    move/from16 v0, v27

    new-array v0, v0, [[B

    move-object/from16 v23, v0

    .line 490
    const/16 v17, 0x0

    .local v17, i:I
    :goto_3
    move/from16 v0, v17

    move v1, v11

    if-ge v0, v1, :cond_4

    .line 491
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    .line 492
    move-object v0, v10

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    long-to-int v12, v4

    .line 494
    .local v12, cursorSequence:I
    if-nez v12, :cond_3

    .line 495
    const-string v4, "destination_port"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 496
    .local v15, destinationPortColumn:I
    invoke-interface {v10, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    long-to-int v14, v4

    .line 498
    .end local v15           #destinationPortColumn:I
    :cond_3
    move-object v0, v10

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v23, v12

    .line 490
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 504
    .end local v12           #cursorSequence:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mRawUri:Landroid/net/Uri;

    move-object v5, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 509
    if-eqz v10, :cond_5

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 513
    :cond_5
    new-instance v21, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v21 .. v21}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 514
    .local v21, output:Ljava/io/ByteArrayOutputStream;
    const/16 v17, 0x0

    :goto_4
    move/from16 v0, v17

    move/from16 v1, v27

    if-ge v0, v1, :cond_8

    .line 516
    move/from16 v0, v17

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    .line 518
    const-string v4, "MMSDomesticHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "pdus["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] Rx: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Landroid/provider/MMSDomesticHelper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    move-object/from16 v0, p1

    array-length v0, v0

    move v4, v0

    sub-int v4, v4, v18

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move/from16 v2, v18

    move v3, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 514
    :goto_5
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 505
    .end local v11           #cursorCount:I
    .end local v17           #i:I
    .end local v21           #output:Ljava/io/ByteArrayOutputStream;
    .end local v22           #pduColumn:I
    .end local v25           #sequenceColumn:I
    :catch_0
    move-exception v4

    move-object/from16 v16, v4

    .line 506
    .local v16, e:Landroid/database/SQLException;
    :try_start_2
    const-string v4, "CDMA"

    const-string v5, "Can\'t access multipart SMS database"

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 507
    const/4 v4, 0x2

    .line 509
    if-eqz v10, :cond_0

    goto/16 :goto_2

    .end local v16           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v4

    if-eqz v10, :cond_6

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v4

    .line 521
    .restart local v11       #cursorCount:I
    .restart local v17       #i:I
    .restart local v21       #output:Ljava/io/ByteArrayOutputStream;
    .restart local v22       #pduColumn:I
    .restart local v25       #sequenceColumn:I
    :cond_7
    const-string v4, "MMSDomesticHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "pdus["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] Rx: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v23, v17

    invoke-static {v6}, Landroid/provider/MMSDomesticHelper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    aget-object v4, v23, v17

    const/4 v5, 0x0

    aget-object v6, v23, v17

    array-length v6, v6

    move-object/from16 v0, v21

    move-object v1, v4

    move v2, v5

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_5

    .line 526
    :cond_8
    invoke-virtual/range {v21 .. v21}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    .line 528
    .local v13, datagram:[B
    if-eqz p3, :cond_a

    const-string v4, "0000000000"

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 529
    const-string v4, "MMSDomesticHelper"

    const-string v5, "jhpark by pass : mWapPush.dispatchWapPdu"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    if-eqz v13, :cond_9

    .line 531
    const-string v4, "MMSDomesticHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "datagram Rx: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v13}, Landroid/provider/MMSDomesticHelper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    move-object v4, v0

    invoke-virtual {v4, v13}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchDomesticWapPdu([B)I

    move-result v4

    goto/16 :goto_0

    .line 544
    :cond_a
    const/4 v4, -0x1

    goto/16 :goto_0

    .end local v8           #whereArgs:[Ljava/lang/String;
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v11           #cursorCount:I
    .end local v13           #datagram:[B
    .end local v17           #i:I
    .end local v18           #index:I
    .end local v21           #output:Ljava/io/ByteArrayOutputStream;
    .end local v22           #pduColumn:I
    .end local v23           #pdus:[[B
    .end local v25           #sequenceColumn:I
    .end local v29           #where:Ljava/lang/StringBuilder;
    .restart local v19       #index:I
    :cond_b
    move/from16 v18, v19

    .end local v19           #index:I
    .restart local v18       #index:I
    goto/16 :goto_1
.end method

.method protected sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 2
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "destPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 550
    if-eqz p6, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {p2, p1, p3, p4, v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 552
    .local v0, pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-virtual {p0, v0, p5, p6}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 553
    return-void

    .line 550
    .end local v0           #pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected sendMultipartSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 2
    .parameter "tracker"

    .prologue
    .line 770
    const-string v0, "CDMA"

    const-string v1, "TODO: CdmaSMSDispatcher.sendMultipartSms not implemented"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    return-void
.end method

.method protected sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 14
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 599
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getNextConcatenatedRef()I

    move-result v13

    and-int/lit16 v8, v13, 0xff

    .line 600
    .local v8, refNumber:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 601
    .local v7, msgCount:I
    const/4 v5, 0x0

    .line 603
    .local v5, encoding:I
    const/4 v6, 0x0

    .end local p2
    .local v6, i:I
    :goto_0
    if-ge v6, v7, :cond_2

    .line 604
    move-object/from16 v0, p3

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    const/4 v13, 0x0

    move-object/from16 v0, p2

    move v1, v13

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v4

    .line 605
    .local v4, details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    iget v13, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-eq v5, v13, :cond_1

    if-eqz v5, :cond_0

    const/4 v13, 0x1

    if-ne v5, v13, :cond_1

    .line 608
    :cond_0
    iget v5, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 603
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 612
    .end local v4           #details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_2
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v7, :cond_7

    .line 613
    new-instance v2, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v2}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 614
    .local v2, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    iput v8, v2, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 615
    add-int/lit8 v13, v6, 0x1

    iput v13, v2, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 616
    iput v7, v2, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 617
    const/4 v13, 0x0

    iput-boolean v13, v2, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 618
    new-instance v10, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v10}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 619
    .local v10, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    iput-object v2, v10, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 621
    const/4 v9, 0x0

    .line 622
    .local v9, sentIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_3

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-le v13, v6, :cond_3

    .line 623
    move-object/from16 v0, p4

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #sentIntent:Landroid/app/PendingIntent;
    check-cast v9, Landroid/app/PendingIntent;

    .line 626
    .restart local v9       #sentIntent:Landroid/app/PendingIntent;
    :cond_3
    const/4 v3, 0x0

    .line 627
    .local v3, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p5, :cond_4

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-le v13, v6, :cond_4

    .line 628
    move-object/from16 v0, p5

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v3, Landroid/app/PendingIntent;

    .line 631
    .restart local v3       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_4
    new-instance v12, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v12}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 632
    .local v12, uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    move-object/from16 v0, p3

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    move-object/from16 v0, p2

    move-object v1, v12

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 634
    const/4 v13, 0x1

    if-ne v5, v13, :cond_5

    .line 635
    const/16 v13, 0x9

    iput v13, v12, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 639
    :goto_2
    const/4 v13, 0x1

    iput-boolean v13, v12, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 645
    if-eqz v3, :cond_6

    const/4 v13, 0x1

    sub-int v13, v7, v13

    if-ne v6, v13, :cond_6

    const/4 v13, 0x1

    :goto_3
    invoke-static {p1, v12, v13}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;Z)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v11

    .line 648
    .local v11, submitPdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-virtual {p0, v11, v9, v3}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 612
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 637
    .end local v11           #submitPdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_5
    const/4 v13, 0x4

    iput v13, v12, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_2

    .line 645
    :cond_6
    const/4 v13, 0x0

    goto :goto_3

    .line 650
    .end local v2           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .end local v3           #deliveryIntent:Landroid/app/PendingIntent;
    .end local v9           #sentIntent:Landroid/app/PendingIntent;
    .end local v10           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    .end local v12           #uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    :cond_7
    return-void
.end method

.method protected sendMultipartTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIII)V
    .locals 18
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter
    .parameter
    .parameter
    .parameter "replyPath"
    .parameter "expiry"
    .parameter "serviceType"
    .parameter "encodingType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;ZIII)V"
        }
    .end annotation

    .prologue
    .line 665
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getNextConcatenatedRef()I

    move-result v15

    and-int/lit16 v10, v15, 0xff

    .line 666
    .local v10, refNumber:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 667
    .local v9, msgCount:I
    const/4 v7, 0x0

    .line 669
    .local v7, encoding:I
    const/4 v8, 0x0

    .end local p2
    .local v8, i:I
    :goto_0
    if-ge v8, v9, :cond_2

    .line 670
    move-object/from16 v0, p3

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    const/4 v15, 0x0

    move-object/from16 v0, p2

    move v1, v8

    move v2, v15

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;IZ)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v6

    .line 672
    .local v6, details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    const-string v15, "EMS"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "code unit size "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object v0, v6

    iget v0, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", i: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    iget v15, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-eq v7, v15, :cond_1

    if-eqz v7, :cond_0

    const/4 v15, 0x1

    if-eq v7, v15, :cond_0

    if-lez v8, :cond_1

    const/4 v15, 0x1

    move-object v0, v6

    iget v0, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    move/from16 v16, v0

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_1

    .line 677
    :cond_0
    iget v7, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 669
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 680
    .end local v6           #details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_2
    const/4 v8, 0x0

    :goto_1
    if-ge v8, v9, :cond_7

    .line 681
    new-instance v4, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v4}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 682
    .local v4, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    iput v10, v4, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 683
    add-int/lit8 v15, v8, 0x1

    iput v15, v4, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 684
    iput v9, v4, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 685
    const/4 v15, 0x0

    iput-boolean v15, v4, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 686
    new-instance v12, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v12}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 687
    .local v12, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    iput-object v4, v12, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 689
    const/4 v11, 0x0

    .line 690
    .local v11, sentIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_3

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-le v15, v8, :cond_3

    .line 691
    move-object/from16 v0, p4

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #sentIntent:Landroid/app/PendingIntent;
    check-cast v11, Landroid/app/PendingIntent;

    .line 694
    .restart local v11       #sentIntent:Landroid/app/PendingIntent;
    :cond_3
    const/4 v5, 0x0

    .line 695
    .local v5, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p5, :cond_4

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-le v15, v8, :cond_4

    .line 696
    move-object/from16 v0, p5

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v5, Landroid/app/PendingIntent;

    .line 699
    .restart local v5       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_4
    new-instance v14, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v14}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 700
    .local v14, uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    move-object/from16 v0, p3

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    move-object/from16 v0, p2

    move-object v1, v14

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 701
    iput-object v12, v14, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 702
    const/4 v15, 0x1

    if-ne v7, v15, :cond_5

    .line 703
    const/16 v15, 0x9

    iput v15, v14, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 707
    :goto_2
    const/4 v15, 0x1

    iput-boolean v15, v14, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 713
    if-eqz v5, :cond_6

    const/4 v15, 0x1

    sub-int v15, v9, v15

    if-ne v8, v15, :cond_6

    const/4 v15, 0x1

    :goto_3
    move-object/from16 v0, p1

    move-object v1, v14

    move v2, v15

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;Z)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v13

    .line 716
    .local v13, submitPdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v11

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 680
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 705
    .end local v13           #submitPdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_5
    const/4 v15, 0x4

    iput v15, v14, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_2

    .line 713
    :cond_6
    const/4 v15, 0x0

    goto :goto_3

    .line 718
    .end local v4           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .end local v5           #deliveryIntent:Landroid/app/PendingIntent;
    .end local v11           #sentIntent:Landroid/app/PendingIntent;
    .end local v12           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    .end local v14           #uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    :cond_7
    return-void
.end method

.method protected sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 3
    .parameter "tracker"

    .prologue
    .line 747
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSMSSyncSenderThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    .line 749
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "mSMSSyncSenderThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSMSSyncSenderThread:Landroid/os/HandlerThread;

    .line 750
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSMSSyncSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 752
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSMSSyncSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 753
    .local v0, looper:Landroid/os/Looper;
    new-instance v1, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;

    invoke-direct {v1, p0, v0, p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;-><init>(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;Landroid/os/Looper;Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSMSSyncSender:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;

    .line 755
    .end local v0           #looper:Landroid/os/Looper;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSMSSyncSender:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;->addSendQueue(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 758
    return-void
.end method

.method protected sendSmsForMobileTracker(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 1
    .parameter "tracker"

    .prologue
    .line 763
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSMSSyncSender:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;->addSendQueue(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 765
    return-void
.end method

.method protected sendSubmitPdu(Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 6
    .parameter "pdu"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 723
    const-string/jumbo v0, "ril.cdma.inecmmode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 724
    if-eqz p2, :cond_0

    .line 726
    const/4 v0, 0x4

    :try_start_0
    invoke-virtual {p2, v0}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 730
    :cond_0
    :goto_0
    const-string v0, "CDMA"

    const-string v1, "Block SMS in Emergency Callback mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    :goto_1
    return-void

    .line 734
    :cond_1
    if-eqz p3, :cond_2

    .line 735
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedScAddress:[B

    iget-object v2, p1, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedMessage:[B

    iget v3, p1, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->mMsgRef:I

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendRawPdu([B[BILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_1

    .line 737
    :cond_2
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedScAddress:[B

    iget-object v1, p1, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedMessage:[B

    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_1

    .line 727
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 3
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 558
    if-eqz p5, :cond_0

    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x0

    invoke-static {p2, p1, p3, v1, v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 560
    .local v0, pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-virtual {p0, v0, p4, p5}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 561
    return-void

    .line 558
    .end local v0           #pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected sendTextForMobileTracker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 3
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 568
    if-eqz p5, :cond_0

    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x0

    invoke-static {p2, p1, p3, v1, v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 570
    .local v0, pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-virtual {p0, v0, p4, p5}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 571
    return-void

    .line 568
    .end local v0           #pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected sendTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIII)V
    .locals 3
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "replyPath"
    .parameter "expiry"
    .parameter "serviceType"
    .parameter "encodingType"

    .prologue
    .line 581
    if-eqz p5, :cond_0

    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x0

    invoke-static {p2, p1, p3, v1, v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 583
    .local v0, pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-virtual {p0, v0, p4, p5}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 584
    return-void

    .line 581
    .end local v0           #pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected setCellBroadcastConfig([ILandroid/os/Message;)V
    .locals 1
    .parameter "configValuesArray"
    .parameter "response"

    .prologue
    .line 805
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setCdmaBroadcastConfig([ILandroid/os/Message;)V

    .line 806
    return-void
.end method
