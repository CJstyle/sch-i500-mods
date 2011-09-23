.class public Lcom/sec/android/app/dialertab/dialer/SpecialCharSequenceMgr;
.super Ljava/lang/Object;
.source "SpecialCharSequenceMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/dialer/SpecialCharSequenceMgr$QueryHandler;,
        Lcom/sec/android/app/dialertab/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;
    }
.end annotation


# static fields
.field private static final ADN_NAME_COLUMN_NAME:Ljava/lang/String; = "name"

.field private static final ADN_PHONE_NUMBER_COLUMN_NAME:Ljava/lang/String; = "number"

.field private static final ADN_QUERY_TOKEN:I = -0x1

.field private static final HARD_KEY_PRESS:I = 0x2

.field private static final LONG_PRESS:I = 0x1

.field private static final MMI_IMEI_DISPLAY:Ljava/lang/String; = "*#06#"

.field private static PersoKeystring:[Ljava/lang/String; = null

.field private static final SHORT_PRESS:I = 0x0

.field private static final SYSTEM_PROP_HIDDENMENU_ENABLE_KEY:Ljava/lang/String; = "ril.hidden_menu_access"

.field private static final SYSTEM_PROP_HIDDENMENU_ENABLE_KEY_VALUE:Ljava/lang/String; = "enable"

.field private static SellOutSMS:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "SpecialCharSequenceMgr"

.field private static intentNameCDMA:[Ljava/lang/String;

.field private static keystring:[Ljava/lang/String;

.field private static keystringCDMA:[Ljava/lang/String;

.field private static final keystringsDSA:[Ljava/lang/String;

.field private static phoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 76
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/dialertab/dialer/SpecialCharSequenceMgr;->phoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    .line 78
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "*2767*73876766#"

    aput-object v1, v0, v3

    const-string v1, "*2767*738767633#"

    aput-object v1, v0, v4

    const-string v1, "*2767*7387678378#"

    aput-object v1, v0, v5

    const-string v1, "*2767*7387677763#"

    aput-object v1, v0, v6

    const-string v1, "*2767*4387264636#"

    aput-object v1, v0, v7

    sput-object v0, Lcom/sec/android/app/dialertab/dialer/SpecialCharSequenceMgr;->SellOutSMS:[Ljava/lang/String;

    .line 84
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "*#7465625#"

    aput-object v1, v0, v3

    const-string v1, "*7465625*638*#"

    aput-object v1, v0, v4

    const-string v1, "#7465625*638*#"

    aput-object v1, v0, v5

    const-string v1, "*7465625*782*#"

    aput-object v1, v0, v6

    const-string v1, "#7465625*782*#"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "*7465625*77*#"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "#7465625*77*#"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "*7465625*27*#"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "#7465625*27*#"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/dialertab/dialer/SpecialCharSequenceMgr;->PersoKeystring:[Ljava/lang/String;

    .line 93
    const/16 v0, 0x43

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "*#1111#"

    aput-object v1, v0, v3

    const-string v1, "*#2222#"

    aput-object v1, v0, v4

    const-string v1, "*#1234#"

    aput-object v1, v0, v5

    const-string v1, "*#4986*2650468#"

    aput-object v1, v0, v6

    const-string v1, "*#197328640#"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "*#0011#"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "*#3695147#"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "*#6854123#"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "*#1546792#"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "*#0228#"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "*#32489#"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "*#2580#"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "*#232337#"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "*#232331#"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "*#232332#"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "*#232338#"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "*#232339#"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "*#0842#"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "*#0782#"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "*#0673#"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "*#0*#"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "*#2263#"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "*#9090#"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "*#0599#"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "*#7284#"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "*#7298#"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "*#4238378#"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "*#0283#"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "*#1575#"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "*#1472365#"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "*#2424#"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "*#745#"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "*#865625#"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "*#742690#"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "*#0002*28346#"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "*#9900#"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "*#44336#"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "*#7780#"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "*2767*3855#"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "*#0289#"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "*#2663#"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "*#2767*2878#"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "*#147852#"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "*#369852#"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "#*2886#"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "*#03#"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "*#0589#"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "*#367#"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "*#0588#"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "*#3264#"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "*#273283*255*3282*#"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "*#273283*255*663282*#"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "*#3282*727336*#"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "*#7594#"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "*#34971539#"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "*#4636*1111#"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "*#526#"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "*#528#"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "*#02280#"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "*#46744674#"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "*#3282*2362#"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "*#9998*3288#"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "*2767*2878#"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "*#7412365#"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "*#80#"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "*#3844228#"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "*#28346#"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/dialertab/dialer/SpecialCharSequenceMgr;->keystring:[Ljava/lang/String;

    .line 108
    const/16 v0, 0x28

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "**33284"

    aput-object v1, v0, v3

    const-string v1, "##3282#"

    aput-object v1, v0, v4

    const-string v1, "**772"

    aput-object v1, v0, v5

    const-string v1, "47*68#13580"

    aput-object v1, v0, v6

    const-string v1, "##2539#"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "##786#"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "*#0*#"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "*#0842#"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "*#0673#"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "*#0289#"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "*#232331#"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "*#2663#"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "*#2664#"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "*#0588#"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "*#3264#"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "*#7780#"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "*#767*3855#"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "*#0228#"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "*#2665#"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "*#2454#"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "*#7451#"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "*#7450#"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "##4772579#"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "##72786#"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "##66236#"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "##889#"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "**5647"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "**87284"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "**7738"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "**7382"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "**673"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "**492743"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "**876"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "*#34762#"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "**367738"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "**3282738"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "*#07#"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "*#363743629"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "*#135802"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "*#22745927"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/dialertab/dialer/SpecialCharSequenceMgr;->keystringCDMA:[Ljava/lang/String;

    .line 153
    const/16 v0, 0x28

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "DEBUG"

    aput-object v1, v0, v3

    const-string v1, "DATA"

    aput-object v1, v0, v4

    const-string v1, "NAMBASIC"

    aput-object v1, v0, v5

    const-string v1, "TESTMODE"

    aput-object v1, v0, v6

    const-string v1, "AKEY"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "RTN"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "0*"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "0842"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "0673"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "0289"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "232331"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "2663"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "2664"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "0588"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "3264"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "7780"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "767*3855"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "0228"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "2665"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "2454"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "7451"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "7450"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "GPSCLRX"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "SCRTN"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "OMADM"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "TTY"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "MLOGS"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "PUTIL"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "FORCE"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "REVAMODE"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "MRD"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "HYBRIDMODE"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "DUN_title"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "SOCRESET"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "DNSSET"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "DATACONN"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "TEST_HISTORY"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "EMERGENCYNUM"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "TLAUNCHER"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "HIDDENMENUENABLE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/dialertab/dialer/SpecialCharSequenceMgr;->intentNameCDMA:[Ljava/lang/String;

    .line 201
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "*2"

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/android/app/dialertab/dialer/SpecialCharSequenceMgr;->keystringsDSA:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    return-void
.end method

.method static IsKeyString(Ljava/lang/String;)Z
    .locals 2
    .parameter "input"

    .prologue
    .line 480
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/SpecialCharSequenceMgr;->keystring:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 482
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/SpecialCharSequenceMgr;->keystring:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 483
    const/4 v1, 0x1

    .line 486
    :goto_1
    return v1

    .line 480
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 486
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method static IsKeyStringCDMA(Ljava/lang/String;)I
    .locals 2
    .parameter "input"

    .prologue
    .line 311
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/SpecialCharSequenceMgr;->keystringCDMA:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 313
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/SpecialCharSequenceMgr;->keystringCDMA:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    .line 317
    :goto_1
    return v1

    .line 311
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 317
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method static IsPersoForLock(Ljava/lang/String;)Z
    .locals 1
    .parameter "input"

    .prologue
    .line 512
    const-string v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    const/4 v0, 0x1

    .line 515
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static IsPersoKeyString(Ljava/lang/String;)Z
    .locals 2
    .parameter "input"

    .prologue
    .line 501
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/SpecialCharSequenceMgr;->PersoKeystring:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 503
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/SpecialCharSequenceMgr;->PersoKeystring:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 504
    const/4 v1, 0x1

    .line 507
    :goto_1
    return v1

    .line 501
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 507
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method static IsSellOutKeyString(Ljava/lang/String;)Z
    .locals 2
    .parameter "input"

    .prologue
    .line 490
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/SpecialCharSequenceMgr;->SellOutSMS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 492
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/SpecialCharSequenceMgr;->SellOutSMS:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 493
    const/4 v1, 0x1

    .line 496
    :goto_1
    return v1

    .line 490
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 496
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static convertHexToDec(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "hex"

    .prologue
    .line 626
    const/16 v2, 0x10

    invoke-static {p0, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    .line 627
    .local v0, v:J
    const-string v2, "SpecialCharSequenceMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "input Hex : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", output Dec : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static handleAdnEntry(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;)Z
    .locals 8
    .parameter "context"
    .parameter "input"
    .parameter "textField"

    .prologue
    .line 529
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    .line 531
    .local v0, phoneType:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 532
    const/4 p0, 0x0

    .line 591
    .end local v0           #phoneType:I
    .end local p0
    .end local p1
    .end local p2
    :goto_0
    return p0

    .line 540
    .restart local v0       #phoneType:I
    .restart local p0
    .restart local p1
    .restart local p2
    :cond_0
    const-string v0, "keyguard"

    .end local v0           #phoneType:I
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 542
    .local v0, keyguardManager:Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    .end local v0           #keyguardManager:Landroid/app/KeyguardManager;
    if-eqz v0, :cond_1

    .line 543
    const/4 p0, 0x0

    goto :goto_0

    .line 546
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 547
    .local v0, len:I
    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    const/4 v1, 0x5

    if-ge v0, v1, :cond_2

    const-string v1, "#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 550
    const/4 v1, 0x0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :try_start_0
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .end local v0           #len:I
    move-result-object p1

    .end local p1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 560
    .local p1, index:I
    new-instance v0, Lcom/sec/android/app/dialertab/dialer/SpecialCharSequenceMgr$QueryHandler;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/dialertab/dialer/SpecialCharSequenceMgr$QueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 563
    .local v0, handler:Lcom/sec/android/app/dialertab/dialer/SpecialCharSequenceMgr$QueryHandler;
    new-instance v2, Lcom/sec/android/app/dialertab/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;

    const/4 v1, 0x1

    sub-int v1, p1, v1

    const/4 v3, -0x1

    invoke-direct {v2, v1, v0, v3}, Lcom/sec/android/app/dialertab/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;-><init>(ILcom/sec/android/app/dialertab/dialer/SpecialCharSequenceMgr$QueryHandler;I)V

    .line 567
    .local v2, sc:Lcom/sec/android/app/dialertab/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;
    const/4 v1, 0x1

    sub-int/2addr p1, v1

    iput p1, v2, Lcom/sec/android/app/dialertab/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;->contactNum:I

    .line 568
    .end local p1           #index:I
    invoke-virtual {v2, p2}, Lcom/sec/android/app/dialertab/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;->setTextField(Landroid/widget/EditText;)V

    .line 571
    new-instance p1, Landroid/app/ProgressDialog;

    invoke-direct {p1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, v2, Lcom/sec/android/app/dialertab/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    .line 572
    iget-object p1, v2, Lcom/sec/android/app/dialertab/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const p2, 0x7f090053

    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 573
    .end local p2
    iget-object p1, v2, Lcom/sec/android/app/dialertab/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const p2, 0x7f090054

    invoke-virtual {p0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    .end local p0
    invoke-virtual {p1, p0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 574
    iget-object p0, v2, Lcom/sec/android/app/dialertab/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 575
    iget-object p0, v2, Lcom/sec/android/app/dialertab/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 576
    iget-object p0, v2, Lcom/sec/android/app/dialertab/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, v2}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 577
    iget-object p0, v2, Lcom/sec/android/app/dialertab/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/Window;->addFlags(I)V

    .line 581
    iget-object p0, v2, Lcom/sec/android/app/dialertab/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/ProgressDialog;->show()V

    .line 584
    const/4 v1, -0x1

    const-string p0, "content://icc/adn"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 p0, 0x1

    new-array v4, p0, [Ljava/lang/String;

    const/4 p0, 0x0

    const-string p1, "number"

    aput-object p1, v4, p0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/dialertab/dialer/SpecialCharSequenceMgr$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 586
    const/4 p0, 0x1

    goto/16 :goto_0

    .line 587
    .end local v0           #handler:Lcom/sec/android/app/dialertab/dialer/SpecialCharSequenceMgr$QueryHandler;
    .end local v2           #sc:Lcom/sec/android/app/dialertab/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;
    :catch_0
    move-exception p0

    .line 591
    :cond_2
    const/4 p0, 0x0

    goto/16 :goto_0
.end method

.method static handleChars(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .parameter "context"
    .parameter "input"

    .prologue
    .line 355
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/sec/android/app/dialertab/dialer/SpecialCharSequenceMgr;->handleChars(Landroid/content/Context;Ljava/lang/String;ZLandroid/widget/EditText;)Z

    move-result v0

    return v0
.end method

.method static handleChars(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;)Z
    .locals 1
    .parameter "context"
    .parameter "input"
    .parameter "textField"

    .prologue
    .line 351
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/sec/android/app/dialertab/dialer/SpecialCharSequenceMgr;->handleChars(Landroid/content/Context;Ljava/lang/String;ZLandroid/widget/EditText;)Z

    move-result v0

    return v0
.end method

.method static handleChars(Landroid/content/Context;Ljava/lang/String;ZLandroid/widget/EditText;)Z
    .locals 6
    .parameter "context"
    .parameter "input"
    .parameter "useSystemWindow"
    .parameter "textField"

    .prologue
    const/4 v5, 0x1

    .line 362
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, dialString:Ljava/lang/String;
    const-string v2, "ril.hidden_menu_access"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "enable"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 366
    .local v1, isHiddenmenuEnable:Z
    const-string v2, "SpecialCharSequenceMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SpecialCharSequenceMgr handleChars = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " // "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    if-ne v1, v5, :cond_1

    .line 370
    invoke-static {p0, v0, p2}, Lcom/sec/android/app/dialertab/dialer/SpecialCharSequenceMgr;->handleIMEIDisplay(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0, v0}, Lcom/sec/android/app/dialertab/dialer/SpecialCharSequenceMgr;->handlePinEntry(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0, v0, p3}, Lcom/sec/android/app/dialertab/dialer/SpecialCharSequenceMgr;->handleAdnEntry(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0, v0}, Lcom/sec/android/app/dialertab/dialer/SpecialCharSequenceMgr;->handleTestmodeSecretCode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0, v0}, Lcom/sec/android/app/dialertab/dialer/SpecialCharSequenceMgr;->handleMSLOTKSLCode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0, v0}, Lcom/sec/android/app/dialertab/dialer/SpecialCharSequenceMgr;->handleTestmodeSecretCodeCDMA(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    move v2, v5

    .line 393
    :goto_0
    return v2

    .line 385
    :cond_1
    const-string v2, "*#22745927"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "**87284"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "**33284"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "**772"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 387
    :cond_2
    invoke-static {p0, v0}, Lcom/sec/android/app/dialertab/dialer/SpecialCharSequenceMgr;->handleTestmodeSecretCodeCDMA(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v5

    .line 388
    goto :goto_0

    .line 393
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static handleDSACode(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 11
    .parameter "context"
    .parameter "input"

    .prologue
    const-string v10, "SpecialCharSequenceMgr"

    const-string v7, "?number=*2"

    .line 205
    const-string v7, "iphoneinfo"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    move-result-object v7

    sput-object v7, Lcom/sec/android/app/dialertab/dialer/SpecialCharSequenceMgr;->phoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    .line 206
    const/4 v2, 0x0

    .line 208
    .local v2, dsaServerURL:Ljava/lang/String;
    sget-object v7, Lcom/sec/android/app/dialertab/dialer/SpecialCharSequenceMgr;->phoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    if-eqz v7, :cond_1

    .line 211
    :try_start_0
    sget-object v7, Lcom/sec/android/app/dialertab/dialer/SpecialCharSequenceMgr;->phoneInfo:Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    invoke-interface {v7}, Lcom/samsungframeworks/internal/IPhoneInfoInterface;->getDSA_SERVER_URL()Ljava/lang/String;

    move-result-object v2

    .line 213
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/SpecialCharSequenceMgr;->keystringsDSA:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v6, v1, v4

    .line 214
    .local v6, number:Ljava/lang/String;
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 215
    const-string v7, "SpecialCharSequenceMgr"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Device Self Service will be launched, dsaURL =  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "?number=*2"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 218
    .local v0, ActIntent:Landroid/content/Intent;
    const-string v7, "com.sprint.dsa.DSA_ACTIVITY"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    const-string v7, "vnd.sprint.dsa/vnd.sprint.dsa.main"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    const-string v7, "com.sprint.dsa.url"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "?number=*2"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    const/4 v7, 0x1

    .line 230
    .end local v0           #ActIntent:Landroid/content/Intent;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #number:Ljava/lang/String;
    :goto_1
    return v7

    .line 213
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    .restart local v6       #number:Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 226
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #number:Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 227
    .local v3, e:Ljava/lang/Exception;
    const-string v7, "SpecialCharSequenceMgr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is occured..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    .end local v3           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v7, 0x0

    goto :goto_1
.end method

.method static handleIMEIDisplay(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 3
    .parameter "context"
    .parameter "input"
    .parameter "useSystemWindow"

    .prologue
    const/4 v2, 0x1

    .line 608
    const-string v1, "*#06#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 609
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    .line 612
    .local v0, phoneType:I
    if-ne v0, v2, :cond_0

    .line 613
    invoke-static {p0, p2}, Lcom/sec/android/app/dialertab/dialer/SpecialCharSequenceMgr;->showIMEIPanel(Landroid/content/Context;Z)V

    move v1, v2

    .line 621
    .end local v0           #phoneType:I
    :goto_0
    return v1

    .line 615
    .restart local v0       #phoneType:I
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 616
    invoke-static {p0, p2}, Lcom/sec/android/app/dialertab/dialer/SpecialCharSequenceMgr;->showMEIDPanel(Landroid/content/Context;Z)V

    move v1, v2

    .line 617
    goto :goto_0

    .line 621
    .end local v0           #phoneType:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static handleMSLOTKSLCode(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 11
    .parameter "context"
    .parameter "input"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/16 v7, 0x8

    const/4 v6, 0x2

    const-string v10, "SpecialCharSequenceMgr"

    .line 234
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 236
    .local v1, len:I
    const/16 v4, 0x9

    if-ne v1, v4, :cond_1

    invoke-virtual {p1, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "##"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x23

    if-ne v4, v5, :cond_1

    .line 239
    const-string v4, "ril.MSL"

    const-string v5, "***772"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 240
    .local v2, strMSL:Ljava/lang/String;
    const-string v4, "ril.OTKSL"

    const-string v5, "111111"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 241
    .local v3, strOTKSL:Ljava/lang/String;
    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 243
    const-string v4, "SpecialCharSequenceMgr"

    const-string v4, "MSL inputed!"

    invoke-static {v10, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.SECRET_CODE"

    const-string v5, "android_secret_code://NAMBASIC"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 246
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move v4, v9

    .line 259
    .end local v0           #intent:Landroid/content/Intent;
    .end local v2           #strMSL:Ljava/lang/String;
    .end local v3           #strOTKSL:Ljava/lang/String;
    :goto_0
    return v4

    .line 249
    .restart local v2       #strMSL:Ljava/lang/String;
    .restart local v3       #strOTKSL:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 251
    const-string v4, "SpecialCharSequenceMgr"

    const-string v4, "OTKSL inputed!"

    invoke-static {v10, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.SECRET_CODE"

    const-string v5, "android_secret_code://OTKSL"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 254
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move v4, v9

    .line 255
    goto :goto_0

    .end local v0           #intent:Landroid/content/Intent;
    .end local v2           #strMSL:Ljava/lang/String;
    .end local v3           #strOTKSL:Ljava/lang/String;
    :cond_1
    move v4, v8

    .line 259
    goto :goto_0
.end method

.method static handlePinEntry(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "input"

    .prologue
    const/4 v3, 0x0

    .line 595
    const-string v1, "**04"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "**05"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 597
    :try_start_0
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->handlePinMmi(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 604
    :goto_0
    return v1

    .line 599
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 600
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SpecialCharSequenceMgr"

    const-string v2, "Failed to handlePinMmi due to remote exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 601
    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    move v1, v3

    .line 604
    goto :goto_0
.end method

.method static handleSecretCode(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "input"

    .prologue
    const/4 v5, 0x4

    .line 407
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 408
    .local v1, len:I
    const/16 v2, 0x8

    if-le v1, v2, :cond_0

    const-string v2, "*#*#"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "#*#*"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 409
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.SECRET_CODE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android_secret_code://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-int v4, v1, v5

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 411
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 412
    const/4 v2, 0x1

    .line 415
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static handleTestMode(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "keyPressValue"
    .parameter "id"

    .prologue
    const/4 v5, 0x1

    .line 321
    const/4 v1, 0x0

    .line 322
    .local v1, secretCode:Ljava/lang/String;
    if-nez p1, :cond_2

    .line 323
    const-string v3, "15"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "1-5"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 324
    :cond_0
    const-string v1, "$$15"

    .line 333
    :cond_1
    :goto_0
    if-eqz v1, :cond_4

    .line 334
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android_secret_code://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 335
    .local v2, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.provider.Telephony.SECRET_CODE"

    invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 336
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move v3, v5

    .line 340
    .end local v0           #intent:Landroid/content/Intent;
    .end local v2           #uri:Landroid/net/Uri;
    :goto_1
    return v3

    .line 326
    :cond_2
    if-ne p1, v5, :cond_1

    .line 328
    const-string v3, "0"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "2"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "3"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "8"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "9"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 329
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "$$"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 340
    :cond_4
    const/4 v3, 0x0

    goto :goto_1
.end method

.method static handleTestmodeSecretCode(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .parameter "context"
    .parameter "input"

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x1

    const-string v4, "android_secret_code://"

    const-string v6, "android.provider.Telephony.SECRET_CODE"

    .line 436
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 437
    .local v1, len:I
    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/dialertab/dialer/SpecialCharSequenceMgr;->IsKeyString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 438
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.SECRET_CODE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android_secret_code://"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-int v3, v1, v5

    invoke-virtual {p1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v6, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 440
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move v2, v5

    .line 476
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return v2

    .line 443
    :cond_0
    const/16 v2, 0xc

    if-le v1, v2, :cond_1

    invoke-static {p1}, Lcom/sec/android/app/dialertab/dialer/SpecialCharSequenceMgr;->IsSellOutKeyString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 445
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.SECRET_CODE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android_secret_code://"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x6

    sub-int v4, v1, v5

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v6, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 447
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move v2, v5

    .line 448
    goto :goto_0

    .line 450
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    const/4 v2, 0x7

    if-le v1, v2, :cond_4

    invoke-static {p1}, Lcom/sec/android/app/dialertab/dialer/SpecialCharSequenceMgr;->IsPersoKeyString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 452
    const-string v2, "SpecialCharSequenceMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "perso key entered"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const-string v2, "*#"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 456
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.SECRET_CODE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android_perso_get_status_code://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-int v3, v1, v5

    invoke-virtual {p1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v6, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 458
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_1
    move v2, v5

    .line 473
    goto/16 :goto_0

    .line 460
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    const-string v2, "*"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 462
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.SECRET_CODE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android_perso_lock_code://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-int v3, v1, v5

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v6, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 464
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 468
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.SECRET_CODE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android_perso_unlock_code://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-int v3, v1, v5

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v6, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 470
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 476
    .end local v0           #intent:Landroid/content/Intent;
    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method static handleTestmodeSecretCodeCDMA(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "input"

    .prologue
    const-string v5, "SpecialCharSequenceMgr"

    .line 265
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 266
    .local v2, len:I
    const/4 v1, -0x1

    .line 268
    .local v1, keyStringIndex:I
    invoke-static {p1}, Lcom/sec/android/app/dialertab/dialer/SpecialCharSequenceMgr;->IsKeyStringCDMA(Ljava/lang/String;)I

    move-result v1

    .line 269
    const-string v3, "SpecialCharSequenceMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "keyStringIndex TRUE!!!!!! >> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    const/4 v3, -0x1

    if-le v1, v3, :cond_0

    .line 272
    const-string v3, "SpecialCharSequenceMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>>>>>> IsKeyString TRUE!!!!!! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/dialertab/dialer/SpecialCharSequenceMgr;->keystringCDMA:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/dialertab/dialer/SpecialCharSequenceMgr;->intentNameCDMA:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.provider.Telephony.SECRET_CODE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "android_secret_code://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/dialertab/dialer/SpecialCharSequenceMgr;->intentNameCDMA:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 275
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 276
    const/4 v3, 0x1

    .line 279
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static showIMEIPanel(Landroid/content/Context;Z)V
    .locals 5
    .parameter "context"
    .parameter "useSystemWindow"

    .prologue
    .line 633
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 636
    .local v1, imeiStr:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialer/SpecialCharSequenceMgr;->convertHexToDec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 638
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f090052

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 644
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d7

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 645
    return-void
.end method

.method static showMEIDPanel(Landroid/content/Context;Z)V
    .locals 5
    .parameter "context"
    .parameter "useSystemWindow"

    .prologue
    .line 648
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 651
    .local v1, meidStr:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialer/SpecialCharSequenceMgr;->convertHexToDec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 653
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f090055

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 659
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d7

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 660
    return-void
.end method
