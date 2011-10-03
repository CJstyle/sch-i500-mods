.class public Lcom/android/settings/deviceinfo/Status;
.super Landroid/preference/PreferenceActivity;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/Status$MyHandler;
    }
.end annotation


# static fields
.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x12c

.field private static final EVENT_SIGNAL_STRENGTH_CHANGED:I = 0xc8

.field private static final EVENT_UPDATE_STATS:I = 0x1f4

.field private static final KEY_BT_ADDRESS:Ljava/lang/String; = "bt_address"

.field private static final KEY_WIFI_MAC_ADDRESS:Ljava/lang/String; = "wifi_mac_address"

.field static final OEM_FUNCTION_ID_HIDDENMENU:I = 0x9

.field static final OEM_HIDDEN_GET_VERSION:I = 0x14

.field private static bdaddr:Ljava/lang/String;

.field private static sUnknown:Ljava/lang/String;


# instance fields
.field private ERI_SysProp:Ljava/lang/String;

.field private LOG_TAG:Ljava/lang/String;

.field private PRL_SysProp:Ljava/lang/String;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryLevel:Landroid/preference/Preference;

.field private mBatteryStatus:Landroid/preference/Preference;

.field private mEri:Landroid/preference/Preference;

.field private mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field private mPrl:Landroid/preference/Preference;

.field private mRes:Landroid/content/res/Resources;

.field private mSignalStrength:Landroid/preference/Preference;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUptime:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/deviceinfo/Status;->bdaddr:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 72
    const-string v0, "STATUS"

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->LOG_TAG:Ljava/lang/String;

    .line 84
    iput-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 93
    iput-object v1, p0, Lcom/android/settings/deviceinfo/Status;->PRL_SysProp:Ljava/lang/String;

    .line 94
    iput-object v1, p0, Lcom/android/settings/deviceinfo/Status;->ERI_SysProp:Ljava/lang/String;

    .line 175
    new-instance v0, Lcom/android/settings/deviceinfo/Status$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Status$1;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 221
    new-instance v0, Lcom/android/settings/deviceinfo/Status$2;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Status$2;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/Status;)Lcom/android/internal/telephony/PhoneStateIntentReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/Status;Landroid/telephony/ServiceState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/Status;->updateServiceState(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/deviceinfo/Status;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/deviceinfo/Status;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mPrl:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/deviceinfo/Status;Landroid/preference/Preference;)Landroid/preference/Preference;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/settings/deviceinfo/Status;->mPrl:Landroid/preference/Preference;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/settings/deviceinfo/Status;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->PRL_SysProp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings/deviceinfo/Status;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/settings/deviceinfo/Status;->PRL_SysProp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/settings/deviceinfo/Status;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mBatteryLevel:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/deviceinfo/Status;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mBatteryStatus:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/deviceinfo/Status;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->updateDataState()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/deviceinfo/Status;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->updateNetworkType()V

    return-void
.end method

.method private convert(J)Ljava/lang/String;
    .locals 8
    .parameter "t"

    .prologue
    const-wide/16 v5, 0x3c

    const-string v7, ":"

    .line 571
    rem-long v3, p1, v5

    long-to-int v2, v3

    .line 572
    .local v2, s:I
    div-long v3, p1, v5

    rem-long/2addr v3, v5

    long-to-int v1, v3

    .line 573
    .local v1, m:I
    const-wide/16 v3, 0xe10

    div-long v3, p1, v3

    long-to-int v0, v3

    .line 575
    .local v0, h:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/Status;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/android/settings/deviceinfo/Status;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private convertDecESNtoHexa(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 6
    .parameter "esnno"

    .prologue
    const/4 v4, 0x3

    const-string v5, "0"

    .line 613
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/Long;

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 614
    .local v0, hmfcode:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 616
    .local v1, hserailno:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 617
    const-string v2, "0"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 636
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    return-object v2

    .line 621
    :pswitch_0
    const-string v2, "0"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 624
    :pswitch_1
    const-string v2, "00"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 627
    :pswitch_2
    const-string v2, "000"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 630
    :pswitch_3
    const-string v2, "0000"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 633
    :pswitch_4
    const-string v2, "00000"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 619
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private convertDecMEIDtoHexa(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 10
    .parameter "meidno"

    .prologue
    const/16 v5, 0xa

    const-string v9, "0000"

    const-string v8, "000"

    const-string v7, "00"

    const-string v6, "0"

    .line 640
    new-instance v3, Ljava/lang/Long;

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 641
    .local v1, hmfcode:Ljava/lang/String;
    new-instance v3, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 642
    .local v2, hserailno:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 643
    .local v0, hexaMEID:Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 666
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    .line 685
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    return-object v3

    .line 645
    :pswitch_0
    const-string v3, "0"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 648
    :pswitch_1
    const-string v3, "00"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 651
    :pswitch_2
    const-string v3, "000"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 654
    :pswitch_3
    const-string v3, "0000"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 657
    :pswitch_4
    const-string v3, "00000"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 660
    :pswitch_5
    const-string v3, "000000"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 663
    :pswitch_6
    const-string v3, "0000000"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 669
    :pswitch_7
    const-string v3, "0"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 672
    :pswitch_8
    const-string v3, "00"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 675
    :pswitch_9
    const-string v3, "000"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 678
    :pswitch_a
    const-string v3, "0000"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 681
    :pswitch_b
    const-string v3, "00000"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 643
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 667
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method private convertDeviceIdtoHexa(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 3
    .parameter "devID"

    .prologue
    .line 581
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 582
    .local v0, len:I
    const/4 v1, 0x0

    .line 584
    .local v1, out:Ljava/lang/StringBuilder;
    const/16 v2, 0xb

    if-ne v0, v2, :cond_1

    .line 585
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/Status;->convertDecESNtoHexa(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 589
    :cond_0
    :goto_0
    return-object v1

    .line 586
    :cond_1
    const/16 v2, 0x12

    if-ne v0, v2, :cond_0

    .line 587
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/Status;->convertDecMEIDtoHexa(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    goto :goto_0
.end method

.method private convertHexToDec(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "hex"

    .prologue
    .line 594
    const/16 v2, 0x10

    invoke-static {p1, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    .line 595
    .local v0, v:J
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->LOG_TAG:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private convertHexToDec(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "hex"
    .parameter "len"

    .prologue
    .line 601
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/Status;->convertHexToDec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 602
    .local v0, dec:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 604
    .local v1, decFixed:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v3, p2, v3

    if-ge v2, v3, :cond_0

    .line 605
    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 607
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getOemData(I)V
    .locals 7
    .parameter "oemId"

    .prologue
    .line 232
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 233
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 235
    .local v1, dos:Ljava/io/DataOutputStream;
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->LOG_TAG:Ljava/lang/String;

    const-string v5, "in getOemData"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const/4 v3, 0x3

    .line 240
    .local v3, fileSize:I
    const/16 v4, 0x9

    :try_start_0
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 241
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 242
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 251
    :goto_0
    return-void

    .line 244
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 246
    .local v2, e:Ljava/io/IOException;
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getOemData exception occured during operation "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private pad(I)Ljava/lang/String;
    .locals 2
    .parameter "n"

    .prologue
    .line 563
    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    .line 564
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 566
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setBtStatus()V
    .locals 4

    .prologue
    .line 536
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 537
    .local v1, bluetooth:Landroid/bluetooth/BluetoothAdapter;
    const-string v3, "bt_address"

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 539
    .local v2, btAddressPref:Landroid/preference/Preference;
    if-nez v1, :cond_0

    .line 541
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 549
    :goto_0
    return-void

    .line 543
    :cond_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 544
    .local v0, address:Ljava/lang/String;
    :goto_1
    if-eqz v0, :cond_1

    .line 545
    sput-object v0, Lcom/android/settings/deviceinfo/Status;->bdaddr:Ljava/lang/String;

    .line 546
    :cond_1
    sget-object v3, Lcom/android/settings/deviceinfo/Status;->bdaddr:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lcom/android/settings/deviceinfo/Status;->bdaddr:Ljava/lang/String;

    :goto_2
    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 543
    .end local v0           #address:Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_1

    .line 546
    .restart local v0       #address:Ljava/lang/String;
    :cond_3
    const v3, 0x7f0902af

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2
.end method

.method private setSummary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "preference"
    .parameter "property"
    .parameter "alt"

    .prologue
    .line 424
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-static {p2, p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    :goto_0
    return-void

    .line 426
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "preference"
    .parameter "text"

    .prologue
    .line 432
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    sget-object p2, Lcom/android/settings/deviceinfo/Status;->sUnknown:Ljava/lang/String;

    .line 436
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 437
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 439
    :cond_1
    return-void
.end method

.method private setWifiStatus()V
    .locals 5

    .prologue
    .line 526
    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 527
    .local v3, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 529
    .local v1, wifiInfo:Landroid/net/wifi/WifiInfo;
    const-string v4, "wifi_mac_address"

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 530
    .local v2, wifiMacAddressPref:Landroid/preference/Preference;
    if-nez v1, :cond_0

    const/4 v4, 0x0

    move-object v0, v4

    .line 531
    .local v0, macAddress:Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object v4, v0

    :goto_1
    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 533
    return-void

    .line 530
    .end local v0           #macAddress:Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 531
    .restart local v0       #macAddress:Ljava/lang/String;
    :cond_1
    const v4, 0x7f0902af

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method private updateDataState()V
    .locals 4

    .prologue
    .line 447
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v1

    .line 448
    .local v1, state:I
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090047

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 450
    .local v0, display:Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 465
    :goto_0
    const-string v2, "data_state"

    invoke-direct {p0, v2, v0}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    return-void

    .line 452
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090045

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 453
    goto :goto_0

    .line 455
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090046

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 456
    goto :goto_0

    .line 458
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090044

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 459
    goto :goto_0

    .line 461
    :pswitch_3
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090043

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 450
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateNetworkType()V
    .locals 3

    .prologue
    .line 443
    const-string v0, "network_type"

    const-string v1, "gsm.network.type"

    sget-object v2, Lcom/android/settings/deviceinfo/Status;->sUnknown:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    return-void
.end method

.method private updateServiceState(Landroid/telephony/ServiceState;)V
    .locals 5
    .parameter "serviceState"

    .prologue
    const-string v4, "roaming_state"

    .line 469
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 470
    .local v1, state:I
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090047

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 472
    .local v0, display:Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 485
    :goto_0
    const-string v2, "service_state"

    invoke-direct {p0, v2, v0}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 488
    const-string v2, "roaming_state"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f09003e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v4, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    :goto_1
    const-string v2, "operator_name"

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    return-void

    .line 474
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f09003a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 475
    goto :goto_0

    .line 478
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f09003b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 479
    goto :goto_0

    .line 481
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f09003d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 490
    :cond_0
    const-string v2, "roaming_state"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f09003f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v4, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 472
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    const/4 v9, 0x0

    const/16 v6, 0x8

    const-string v8, "meid_number"

    const-string v5, "Dec:"

    const-string v7, "\nHex:0x"

    .line 254
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 257
    new-instance v3, Lcom/android/settings/deviceinfo/Status$MyHandler;

    invoke-direct {v3, p0, p0}, Lcom/android/settings/deviceinfo/Status$MyHandler;-><init>(Lcom/android/settings/deviceinfo/Status;Lcom/android/settings/deviceinfo/Status;)V

    iput-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    .line 259
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 261
    const v3, 0x7f04000f

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/Status;->addPreferencesFromResource(I)V

    .line 262
    const-string v3, "battery_level"

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mBatteryLevel:Landroid/preference/Preference;

    .line 263
    const-string v3, "battery_status"

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mBatteryStatus:Landroid/preference/Preference;

    .line 265
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    .line 266
    sget-object v3, Lcom/android/settings/deviceinfo/Status;->sUnknown:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 267
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f090033

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/settings/deviceinfo/Status;->sUnknown:Ljava/lang/String;

    .line 270
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 272
    const-string v3, "signal_strength"

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mSignalStrength:Landroid/preference/Preference;

    .line 277
    const/16 v3, 0x14

    invoke-direct {p0, v3}, Lcom/android/settings/deviceinfo/Status;->getOemData(I)V

    .line 279
    const-string v3, "up_time"

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mUptime:Landroid/preference/Preference;

    .line 282
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CDMA"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 285
    const-string v3, "min_number"

    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, devId:Ljava/lang/String;
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v3, v6, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xe

    if-ne v3, v4, :cond_7

    .line 299
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 302
    .local v1, meid:Ljava/lang/StringBuilder;
    const-string v3, "B0000000"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 304
    const-string v3, "Dec:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "17600000000"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nHex:0x"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    :cond_2
    :goto_0
    const-string v3, "meid_number"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v8, v3}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    .end local v1           #meid:Ljava/lang/StringBuilder;
    :goto_1
    const-string v3, "imei"

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 326
    .local v2, removablePref:Landroid/preference/Preference;
    if-eqz v2, :cond_3

    .line 327
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 329
    :cond_3
    const-string v3, "imei_sv"

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 330
    if-eqz v2, :cond_4

    .line 331
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 380
    .end local v0           #devId:Ljava/lang/String;
    :cond_4
    :goto_2
    const-string v3, "number"

    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    new-instance v3, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 383
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v4, 0xc8

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifySignalStrength(I)V

    .line 384
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v4, 0x12c

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 386
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->setWifiStatus()V

    .line 387
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->setBtStatus()V

    .line 388
    return-void

    .line 306
    .end local v2           #removablePref:Landroid/preference/Preference;
    .restart local v0       #devId:Ljava/lang/String;
    .restart local v1       #meid:Ljava/lang/StringBuilder;
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v6, :cond_6

    .line 308
    const-string v3, "Dec:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v0, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/deviceinfo/Status;->convertHexToDec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/deviceinfo/Status;->convertHexToDec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nHex:0x"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 310
    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xe

    if-ne v3, v4, :cond_2

    .line 312
    const-string v3, "Dec:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xa

    invoke-direct {p0, v4, v5}, Lcom/android/settings/deviceinfo/Status;->convertHexToDec(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v6}, Lcom/android/settings/deviceinfo/Status;->convertHexToDec(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nHex:0x"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 319
    .end local v1           #meid:Ljava/lang/StringBuilder;
    :cond_7
    const-string v3, "meid_number"

    const-string v3, "Unknown"

    invoke-direct {p0, v8, v3}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 348
    .end local v0           #devId:Ljava/lang/String;
    :cond_8
    const-string v3, "imei"

    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const-string v4, "imei_sv"

    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v4, v3}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string v3, "prl_version"

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 357
    .restart local v2       #removablePref:Landroid/preference/Preference;
    if-eqz v2, :cond_9

    .line 358
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 360
    :cond_9
    const-string v3, "meid_number"

    invoke-virtual {p0, v8}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 361
    if-eqz v2, :cond_a

    .line 362
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 364
    :cond_a
    const-string v3, "min_number"

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 365
    if-eqz v2, :cond_4

    .line 366
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 409
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 411
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    .line 412
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 413
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Status;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 414
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 415
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 392
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 394
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 395
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/deviceinfo/Status;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 397
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->updateSignalStrength()V

    .line 398
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/Status;->updateServiceState(Landroid/telephony/ServiceState;)V

    .line 399
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->updateDataState()V

    .line 401
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 404
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 405
    return-void
.end method

.method updateSignalStrength()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 500
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mSignalStrength:Landroid/preference/Preference;

    if-eqz v4, :cond_4

    .line 501
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 503
    .local v3, state:I
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 505
    .local v0, r:Landroid/content/res/Resources;
    const/4 v4, 0x1

    if-eq v4, v3, :cond_0

    const/4 v4, 0x3

    if-ne v4, v3, :cond_1

    .line 507
    :cond_0
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mSignalStrength:Landroid/preference/Preference;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 510
    :cond_1
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthDbm()I

    move-result v2

    .line 512
    .local v2, signalDbm:I
    if-ne v6, v2, :cond_2

    const/4 v2, 0x0

    .line 514
    :cond_2
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrength()I

    move-result v1

    .line 516
    .local v1, signalAsu:I
    if-ne v6, v1, :cond_3

    const/4 v1, 0x0

    .line 518
    :cond_3
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mSignalStrength:Landroid/preference/Preference;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f09004a

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 523
    .end local v0           #r:Landroid/content/res/Resources;
    .end local v1           #signalAsu:I
    .end local v2           #signalDbm:I
    .end local v3           #state:I
    :cond_4
    return-void
.end method

.method updateTimes()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 552
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    div-long v0, v4, v6

    .line 553
    .local v0, at:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    div-long v2, v4, v6

    .line 555
    .local v2, ut:J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 556
    const-wide/16 v2, 0x1

    .line 559
    :cond_0
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mUptime:Landroid/preference/Preference;

    invoke-direct {p0, v2, v3}, Lcom/android/settings/deviceinfo/Status;->convert(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 560
    return-void
.end method
