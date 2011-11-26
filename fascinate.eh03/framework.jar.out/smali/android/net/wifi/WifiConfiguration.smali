.class public Landroid/net/wifi/WifiConfiguration;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiConfiguration$ApMode;,
        Landroid/net/wifi/WifiConfiguration$Status;,
        Landroid/net/wifi/WifiConfiguration$GroupCipher;,
        Landroid/net/wifi/WifiConfiguration$PairwiseCipher;,
        Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;,
        Landroid/net/wifi/WifiConfiguration$Protocol;,
        Landroid/net/wifi/WifiConfiguration$KeyMgmt;,
        Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "WifiConfiguration"

.field public static final bssidVarName:Ljava/lang/String; = "bssid"

.field public static final hiddenSSIDVarName:Ljava/lang/String; = "scan_ssid"

.field public static final priorityVarName:Ljava/lang/String; = "priority"

.field public static final pskVarName:Ljava/lang/String; = "psk"

.field public static final ssidVarName:Ljava/lang/String; = "ssid"

.field public static final wepKeyVarNames:[Ljava/lang/String; = null

.field public static final wepTxKeyIdxVarName:Ljava/lang/String; = "wep_tx_keyidx"


# instance fields
.field public BSSID:Ljava/lang/String;

.field public Dont_display_checked_flag:I

.field public SSID:Ljava/lang/String;

.field public allow_all_device_checked:Z

.field public allowedAPModes:Ljava/util/BitSet;

.field public allowedAuthAlgorithms:Ljava/util/BitSet;

.field public allowedGroupCiphers:Ljava/util/BitSet;

.field public allowedKeyManagement:Ljava/util/BitSet;

.field public allowedPairwiseCiphers:Ljava/util/BitSet;

.field public allowedProtocols:Ljava/util/BitSet;

.field public anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

.field public blackMacAddr:Ljava/lang/String;

.field public blackMacCnt:I

.field public ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

.field public channel:I

.field public client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

.field public eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

.field public enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

.field public hiddenSSID:Z

.field public identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

.field public mode:I

.field public networkId:I

.field public pac_file:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

.field public password:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

.field public phase1:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

.field public phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

.field public preSharedKey:Ljava/lang/String;

.field public priority:I

.field public private_key:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

.field public profileNumber:I

.field public status:I

.field public useMifi:Z

.field public wepKeys:[Ljava/lang/String;

.field public wepTxKeyIndex:I

.field public whiteMacAddr:Ljava/lang/String;

.field public whiteMacCnt:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "wep_key0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "wep_key1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "wep_key2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "wep_key3"

    aput-object v2, v0, v1

    sput-object v0, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    .line 587
    new-instance v0, Landroid/net/wifi/WifiConfiguration$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v6, Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v7, "eap"

    invoke-direct {v6, p0, v7, v9}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration$1;)V

    iput-object v6, p0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .line 80
    new-instance v6, Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string/jumbo v7, "phase1"

    invoke-direct {v6, p0, v7, v9}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration$1;)V

    iput-object v6, p0, Landroid/net/wifi/WifiConfiguration;->phase1:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .line 82
    new-instance v6, Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string/jumbo v7, "phase2"

    invoke-direct {v6, p0, v7, v9}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration$1;)V

    iput-object v6, p0, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .line 84
    new-instance v6, Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string/jumbo v7, "pac_file"

    invoke-direct {v6, p0, v7, v9}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration$1;)V

    iput-object v6, p0, Landroid/net/wifi/WifiConfiguration;->pac_file:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .line 86
    new-instance v6, Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v7, "identity"

    invoke-direct {v6, p0, v7, v9}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration$1;)V

    iput-object v6, p0, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .line 88
    new-instance v6, Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v7, "anonymous_identity"

    invoke-direct {v6, p0, v7, v9}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration$1;)V

    iput-object v6, p0, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .line 90
    new-instance v6, Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string/jumbo v7, "password"

    invoke-direct {v6, p0, v7, v9}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration$1;)V

    iput-object v6, p0, Landroid/net/wifi/WifiConfiguration;->password:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .line 92
    new-instance v6, Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v7, "client_cert"

    invoke-direct {v6, p0, v7, v9}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration$1;)V

    iput-object v6, p0, Landroid/net/wifi/WifiConfiguration;->client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .line 94
    new-instance v6, Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string/jumbo v7, "private_key"

    invoke-direct {v6, p0, v7, v9}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration$1;)V

    iput-object v6, p0, Landroid/net/wifi/WifiConfiguration;->private_key:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .line 96
    new-instance v6, Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v7, "ca_cert"

    invoke-direct {v6, p0, v7, v9}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration$1;)V

    iput-object v6, p0, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .line 99
    const/16 v6, 0x8

    new-array v6, v6, [Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v7, p0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aput-object v7, v6, v10

    iget-object v7, p0, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aput-object v7, v6, v11

    const/4 v7, 0x2

    iget-object v8, p0, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget-object v8, p0, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aput-object v8, v6, v7

    iget-object v7, p0, Landroid/net/wifi/WifiConfiguration;->password:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aput-object v7, v6, v12

    const/4 v7, 0x5

    iget-object v8, p0, Landroid/net/wifi/WifiConfiguration;->client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aput-object v8, v6, v7

    const/4 v7, 0x6

    iget-object v8, p0, Landroid/net/wifi/WifiConfiguration;->private_key:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aput-object v8, v6, v7

    const/4 v7, 0x7

    iget-object v8, p0, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aput-object v8, v6, v7

    iput-object v6, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .line 365
    const/4 v6, -0x1

    iput v6, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 366
    iput-object v9, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 367
    iput-object v9, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 368
    iput v10, p0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 369
    iput-boolean v10, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 371
    iput v10, p0, Landroid/net/wifi/WifiConfiguration;->Dont_display_checked_flag:I

    .line 373
    new-instance v6, Ljava/util/BitSet;

    invoke-direct {v6}, Ljava/util/BitSet;-><init>()V

    iput-object v6, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 374
    new-instance v6, Ljava/util/BitSet;

    invoke-direct {v6}, Ljava/util/BitSet;-><init>()V

    iput-object v6, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    .line 375
    new-instance v6, Ljava/util/BitSet;

    invoke-direct {v6}, Ljava/util/BitSet;-><init>()V

    iput-object v6, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    .line 376
    new-instance v6, Ljava/util/BitSet;

    invoke-direct {v6}, Ljava/util/BitSet;-><init>()V

    iput-object v6, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 377
    new-instance v6, Ljava/util/BitSet;

    invoke-direct {v6}, Ljava/util/BitSet;-><init>()V

    iput-object v6, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 381
    new-instance v6, Ljava/util/BitSet;

    invoke-direct {v6}, Ljava/util/BitSet;-><init>()V

    iput-object v6, p0, Landroid/net/wifi/WifiConfiguration;->allowedAPModes:Ljava/util/BitSet;

    .line 385
    iput v11, p0, Landroid/net/wifi/WifiConfiguration;->profileNumber:I

    .line 386
    iput-boolean v11, p0, Landroid/net/wifi/WifiConfiguration;->useMifi:Z

    .line 389
    const/4 v1, 0x0

    .line 392
    .local v1, channel:I
    iput-object v9, p0, Landroid/net/wifi/WifiConfiguration;->whiteMacAddr:Ljava/lang/String;

    .line 393
    iput-object v9, p0, Landroid/net/wifi/WifiConfiguration;->blackMacAddr:Ljava/lang/String;

    .line 394
    iput v10, p0, Landroid/net/wifi/WifiConfiguration;->whiteMacCnt:I

    .line 395
    iput v10, p0, Landroid/net/wifi/WifiConfiguration;->blackMacCnt:I

    .line 397
    iput-boolean v11, p0, Landroid/net/wifi/WifiConfiguration;->allow_all_device_checked:Z

    .line 403
    new-array v6, v12, [Ljava/lang/String;

    iput-object v6, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    .line 404
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v6, v6

    if-ge v3, v6, :cond_0

    .line 405
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v9, v6, v3

    .line 404
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 406
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .local v0, arr$:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_1

    aget-object v2, v0, v4

    .line 407
    .local v2, field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    invoke-virtual {v2, v9}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 406
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 409
    .end local v2           #field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    :cond_1
    return-void
.end method

.method static synthetic access$100(Landroid/os/Parcel;)Ljava/util/BitSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-static {p0}, Landroid/net/wifi/WifiConfiguration;->readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v0

    return-object v0
.end method

.method private static readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;
    .locals 4
    .parameter "src"

    .prologue
    .line 506
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 508
    .local v0, cardinality:I
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2}, Ljava/util/BitSet;-><init>()V

    .line 509
    .local v2, set:Ljava/util/BitSet;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 510
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 509
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 512
    :cond_0
    return-object v2
.end method

.method private static writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V
    .locals 2
    .parameter "dest"
    .parameter "set"

    .prologue
    .line 516
    const/4 v0, -0x1

    .line 518
    .local v0, nextSetBit:I
    invoke-virtual {p1}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 520
    :goto_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 521
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 522
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 526
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    .prologue
    .line 412
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 413
    .local v9, sbuf:Ljava/lang/StringBuffer;
    iget v11, p0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-nez v11, :cond_2

    .line 414
    const-string v11, "* "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 418
    :cond_0
    :goto_0
    const-string v11, "ID: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    iget v12, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, " SSID: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    iget-object v12, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, " BSSID: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    iget-object v12, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, " PRIO: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    iget v12, p0, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v11

    const/16 v12, 0xa

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 421
    const-string v11, " KeyMgmt:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 422
    const/4 v5, 0x0

    .local v5, k:I
    :goto_1
    iget-object v11, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v11}, Ljava/util/BitSet;->size()I

    move-result v11

    if-ge v5, v11, :cond_4

    .line 423
    iget-object v11, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v11, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 424
    const-string v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 425
    sget-object v11, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    array-length v11, v11

    if-ge v5, v11, :cond_3

    .line 426
    sget-object v11, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v11, v11, v5

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 422
    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 415
    .end local v5           #k:I
    :cond_2
    iget v11, p0, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    .line 416
    const-string v11, "- "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 428
    .restart local v5       #k:I
    :cond_3
    const-string v11, "??"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 432
    :cond_4
    const-string v11, " Protocols:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 433
    const/4 v7, 0x0

    .local v7, p:I
    :goto_3
    iget-object v11, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v11}, Ljava/util/BitSet;->size()I

    move-result v11

    if-ge v7, v11, :cond_7

    .line 434
    iget-object v11, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v11, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 435
    const-string v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 436
    sget-object v11, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    array-length v11, v11

    if-ge v7, v11, :cond_6

    .line 437
    sget-object v11, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    aget-object v11, v11, v7

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 433
    :cond_5
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 439
    :cond_6
    const-string v11, "??"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 443
    :cond_7
    const/16 v11, 0xa

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 444
    const-string v11, " AuthAlgorithms:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 445
    const/4 v0, 0x0

    .local v0, a:I
    :goto_5
    iget-object v11, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v11}, Ljava/util/BitSet;->size()I

    move-result v11

    if-ge v0, v11, :cond_a

    .line 446
    iget-object v11, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v11, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 447
    const-string v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 448
    sget-object v11, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    array-length v11, v11

    if-ge v0, v11, :cond_9

    .line 449
    sget-object v11, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    aget-object v11, v11, v0

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 445
    :cond_8
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 451
    :cond_9
    const-string v11, "??"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 455
    :cond_a
    const/16 v11, 0xa

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 456
    const-string v11, " PairwiseCiphers:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 457
    const/4 v8, 0x0

    .local v8, pc:I
    :goto_7
    iget-object v11, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v11}, Ljava/util/BitSet;->size()I

    move-result v11

    if-ge v8, v11, :cond_d

    .line 458
    iget-object v11, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v11, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 459
    const-string v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 460
    sget-object v11, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    array-length v11, v11

    if-ge v8, v11, :cond_c

    .line 461
    sget-object v11, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    aget-object v11, v11, v8

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 457
    :cond_b
    :goto_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 463
    :cond_c
    const-string v11, "??"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_8

    .line 467
    :cond_d
    const/16 v11, 0xa

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 468
    const-string v11, " GroupCiphers:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 469
    const/4 v3, 0x0

    .local v3, gc:I
    :goto_9
    iget-object v11, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v11}, Ljava/util/BitSet;->size()I

    move-result v11

    if-ge v3, v11, :cond_10

    .line 470
    iget-object v11, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v11, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 471
    const-string v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 472
    sget-object v11, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    array-length v11, v11

    if-ge v3, v11, :cond_f

    .line 473
    sget-object v11, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    aget-object v11, v11, v3

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 469
    :cond_e
    :goto_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 475
    :cond_f
    const-string v11, "??"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_a

    .line 479
    :cond_10
    const/16 v11, 0xa

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, " PSK: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 480
    iget-object v11, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v11, :cond_11

    .line 481
    const/16 v11, 0x2a

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 484
    :cond_11
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .local v1, arr$:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    array-length v6, v1

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_b
    if-ge v4, v6, :cond_13

    aget-object v2, v1, v4

    .line 485
    .local v2, field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    const/16 v11, 0xa

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->varName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 486
    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v10

    .line 487
    .local v10, value:Ljava/lang/String;
    if-eqz v10, :cond_12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 484
    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 489
    .end local v2           #field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    .end local v10           #value:Ljava/lang/String;
    :cond_13
    const/16 v11, 0xa

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 490
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    return-object v11
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 8
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 531
    iget v5, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 532
    iget v5, p0, Landroid/net/wifi/WifiConfiguration;->status:I

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 533
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 534
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 535
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 536
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 537
    .local v4, wepKey:Ljava/lang/String;
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 536
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 538
    .end local v4           #wepKey:Ljava/lang/String;
    :cond_0
    iget v5, p0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 539
    iget v5, p0, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 540
    iget-boolean v5, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v5, :cond_1

    move v5, v7

    :goto_1
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 542
    iget v5, p0, Landroid/net/wifi/WifiConfiguration;->Dont_display_checked_flag:I

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 545
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-static {p1, v5}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 546
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-static {p1, v5}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 547
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-static {p1, v5}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 548
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-static {p1, v5}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 549
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-static {p1, v5}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 553
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedAPModes:Ljava/util/BitSet;

    invoke-static {p1, v5}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 554
    iget v5, p0, Landroid/net/wifi/WifiConfiguration;->profileNumber:I

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 555
    iget-boolean v5, p0, Landroid/net/wifi/WifiConfiguration;->useMifi:Z

    if-eqz v5, :cond_2

    move v5, v7

    :goto_2
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 556
    iget v5, p0, Landroid/net/wifi/WifiConfiguration;->channel:I

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 557
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->whiteMacAddr:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 558
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->blackMacAddr:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 559
    iget v5, p0, Landroid/net/wifi/WifiConfiguration;->whiteMacCnt:I

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 560
    iget v5, p0, Landroid/net/wifi/WifiConfiguration;->blackMacCnt:I

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 562
    iget-boolean v5, p0, Landroid/net/wifi/WifiConfiguration;->allow_all_device_checked:Z

    if-eqz v5, :cond_3

    move v5, v7

    :goto_3
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 581
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .local v0, arr$:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    array-length v3, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v3, :cond_4

    aget-object v1, v0, v2

    .line 582
    .local v1, field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 581
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .end local v1           #field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    .local v0, arr$:[Ljava/lang/String;
    :cond_1
    move v5, v6

    .line 540
    goto :goto_1

    :cond_2
    move v5, v6

    .line 555
    goto :goto_2

    :cond_3
    move v5, v6

    .line 562
    goto :goto_3

    .line 584
    .local v0, arr$:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    :cond_4
    return-void
.end method
