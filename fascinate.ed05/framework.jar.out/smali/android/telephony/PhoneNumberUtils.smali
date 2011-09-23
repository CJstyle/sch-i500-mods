.class public Landroid/telephony/PhoneNumberUtils;
.super Ljava/lang/Object;
.source "PhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final CCC_LENGTH:I = 0x0

.field private static final COUNTLY_CALLING_CALL:[Z = null

.field private static final DBG:Z = false

.field private static final ECC_CATEGORY_Ambulance:I = 0x2

.field private static final ECC_CATEGORY_Default_Emergency_Center:I = 0x0

.field private static final ECC_CATEGORY_Fire_Brigade:I = 0x4

.field private static final ECC_CATEGORY_Marine_Guard:I = 0x8

.field private static final ECC_CATEGORY_Mountain_Rescue:I = 0x10

.field private static final ECC_CATEGORY_Normal_Call:I = 0xff

.field private static final ECC_CATEGORY_Police:I = 0x1

.field public static final FORMAT_JAPAN:I = 0x2

.field public static final FORMAT_NANP:I = 0x1

.field public static final FORMAT_UNKNOWN:I = 0x0

.field private static final GLOBAL_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final KEYPAD_MAP:Landroid/util/SparseIntArray; = null

.field static final LOG_TAG:Ljava/lang/String; = "PhoneNumberUtils"

.field static final MIN_MATCH:I = 0x7

.field private static final NANP_COUNTRIES:[Ljava/lang/String; = null

.field private static final NANP_IDP_STRING:Ljava/lang/String; = "011"

.field private static final NANP_LENGTH:I = 0xa

.field private static final NANP_STATE_DASH:I = 0x4

.field private static final NANP_STATE_DIGIT:I = 0x1

.field private static final NANP_STATE_ONE:I = 0x3

.field private static final NANP_STATE_PLUS:I = 0x2

.field public static final PAUSE:C = ','

.field private static final PLUS_SIGN_CHAR:C = '+'

.field private static final PLUS_SIGN_STRING:Ljava/lang/String; = "+"

.field public static final TOA_International:I = 0x91

.field public static final TOA_Unknown:I = 0x81

.field public static final WAIT:C = ';'

.field public static final WILD:C = 'N'

.field static mEmergencyTestEnable:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x34

    const/16 v6, 0x33

    const/16 v5, 0x32

    const/16 v4, 0x39

    const/16 v3, 0x37

    .line 96
    const-string v0, "[\\+]?[0-9.-]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->GLOBAL_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    .line 1184
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "US"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "CA"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "AS"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "AI"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "AG"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "BS"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "BB"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "BM"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "VG"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "KY"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "DM"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "DO"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "GD"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "GU"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "JM"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "PR"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "MS"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "MP"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "KN"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "LC"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "VC"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "TT"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "TC"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "VI"

    aput-object v2, v0, v1

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    .line 1591
    const/4 v0, 0x0

    sput v0, Landroid/telephony/PhoneNumberUtils;->mEmergencyTestEnable:I

    .line 1682
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    .line 1684
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x61

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x62

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x63

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1685
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x41

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x42

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x43

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1687
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x66

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1688
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x44

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x45

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x46

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1690
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x67

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x68

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x69

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 1691
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x47

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x48

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x49

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 1693
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6a

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6b

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6c

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1694
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4a

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4b

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4c

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1696
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6d

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6e

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6f

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1697
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4d

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4e

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4f

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1699
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x70

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x71

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x72

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x73

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1700
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x50

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x51

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x52

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x53

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1702
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x74

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x75

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x76

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1703
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x54

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x55

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x56

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1705
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x77

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x78

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x79

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x7a

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1706
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x57

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x58

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x59

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2120
    const/16 v0, 0x64

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->COUNTLY_CALLING_CALL:[Z

    .line 2132
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->COUNTLY_CALLING_CALL:[Z

    array-length v0, v0

    sput v0, Landroid/telephony/PhoneNumberUtils;->CCC_LENGTH:I

    return-void

    .line 2120
    nop

    :array_0
    .array-data 0x1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2155
    return-void
.end method

.method public static DocomoNetworkPortionToCalledPartyBCD(Ljava/lang/String;)[B
    .locals 2
    .parameter "s"

    .prologue
    .line 1061
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1062
    .local v0, networkPortion:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->DocomoNumberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    move-result-object v1

    return-object v1
.end method

.method private static DocomoNumberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B
    .locals 13
    .parameter "number"
    .parameter "includeLength"

    .prologue
    .line 1132
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    .line 1133
    .local v7, numberLenReal:I
    move v0, v7

    .line 1134
    .local v0, numberLenEffective:I
    const/16 v1, 0x2b

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    move v3, v1

    .line 1135
    .local v3, hasPlus:Z
    :goto_0
    const/16 v1, 0x23

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    const/4 v1, 0x1

    move v4, v1

    .line 1136
    .local v4, hasSharp:Z
    :goto_1
    const/16 v1, 0x2a

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    const/4 v1, 0x1

    move v5, v1

    .line 1138
    .local v5, hasStar:Z
    :goto_2
    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 1140
    :cond_0
    if-nez v0, :cond_4

    const/4 p0, 0x0

    .line 1169
    .end local v0           #numberLenEffective:I
    .end local p0
    .end local p1
    :goto_3
    return-object p0

    .line 1134
    .end local v3           #hasPlus:Z
    .end local v4           #hasSharp:Z
    .end local v5           #hasStar:Z
    .restart local v0       #numberLenEffective:I
    .restart local p0
    .restart local p1
    :cond_1
    const/4 v1, 0x0

    move v3, v1

    goto :goto_0

    .line 1135
    .restart local v3       #hasPlus:Z
    :cond_2
    const/4 v1, 0x0

    move v4, v1

    goto :goto_1

    .line 1136
    .restart local v4       #hasSharp:Z
    :cond_3
    const/4 v1, 0x0

    move v5, v1

    goto :goto_2

    .line 1142
    .restart local v5       #hasStar:Z
    :cond_4
    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v1, v0, 0x2

    .line 1143
    .end local v0           #numberLenEffective:I
    .local v1, resultLen:I
    const/4 v0, 0x1

    .line 1144
    .local v0, extraBytes:I
    if-eqz p1, :cond_d

    add-int/lit8 v0, v0, 0x1

    move v2, v0

    .line 1145
    .end local v0           #extraBytes:I
    .local v2, extraBytes:I
    :goto_4
    add-int v9, v1, v2

    .line 1147
    .end local v1           #resultLen:I
    .local v9, resultLen:I
    new-array v8, v9, [B

    .line 1149
    .local v8, result:[B
    const/4 v0, 0x0

    .line 1150
    .local v0, digitCount:I
    const/4 v1, 0x0

    .local v1, i:I
    move v6, v1

    .end local v1           #i:I
    .local v6, i:I
    move v1, v0

    .end local v0           #digitCount:I
    .local v1, digitCount:I
    :goto_5
    if-ge v6, v7, :cond_7

    .line 1151
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1152
    .local v0, c:C
    const/16 v10, 0x2b

    if-ne v0, v10, :cond_5

    move v0, v1

    .line 1150
    .end local v1           #digitCount:I
    .local v0, digitCount:I
    :goto_6
    add-int/lit8 v1, v6, 0x1

    .end local v6           #i:I
    .local v1, i:I
    move v6, v1

    .end local v1           #i:I
    .restart local v6       #i:I
    move v1, v0

    .end local v0           #digitCount:I
    .local v1, digitCount:I
    goto :goto_5

    .line 1153
    .local v0, c:C
    :cond_5
    and-int/lit8 v10, v1, 0x1

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    const/4 v10, 0x4

    .line 1154
    .local v10, shift:I
    :goto_7
    shr-int/lit8 v11, v1, 0x1

    add-int/2addr v11, v2

    aget-byte v12, v8, v11

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->charToBCD(C)I

    move-result v0

    .end local v0           #c:C
    and-int/lit8 v0, v0, 0xf

    shl-int/2addr v0, v10

    int-to-byte v0, v0

    or-int/2addr v0, v12

    int-to-byte v0, v0

    aput-byte v0, v8, v11

    .line 1155
    add-int/lit8 v0, v1, 0x1

    .end local v1           #digitCount:I
    .local v0, digitCount:I
    goto :goto_6

    .line 1153
    .end local v10           #shift:I
    .local v0, c:C
    .restart local v1       #digitCount:I
    :cond_6
    const/4 v10, 0x0

    goto :goto_7

    .line 1159
    .end local v0           #c:C
    :cond_7
    and-int/lit8 p0, v1, 0x1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    .end local p0
    shr-int/lit8 p0, v1, 0x1

    add-int/2addr p0, v2

    aget-byte v0, v8, p0

    or-int/lit16 v0, v0, 0xf0

    int-to-byte v0, v0

    aput-byte v0, v8, p0

    .line 1161
    :cond_8
    const/4 p0, 0x0

    .line 1162
    .local p0, offset:I
    if-eqz p1, :cond_9

    add-int/lit8 p1, p0, 0x1

    .end local p0           #offset:I
    .local p1, offset:I
    const/4 v0, 0x1

    sub-int v0, v9, v0

    int-to-byte v0, v0

    aput-byte v0, v8, p0

    move p0, p1

    .line 1163
    .end local p1           #offset:I
    .restart local p0       #offset:I
    :cond_9
    if-eqz v3, :cond_c

    const/16 p1, 0x91

    :goto_8
    int-to-byte p1, p1

    aput-byte p1, v8, p0

    .line 1165
    if-nez v4, :cond_a

    if-eqz v5, :cond_b

    .line 1166
    :cond_a
    aget-byte p1, v8, p0

    and-int/lit16 p1, p1, 0xf0

    int-to-byte p1, p1

    aput-byte p1, v8, p0

    :cond_b
    move-object p0, v8

    .line 1169
    goto :goto_3

    .line 1163
    :cond_c
    const/16 p1, 0x81

    goto :goto_8

    .end local v2           #extraBytes:I
    .end local v6           #i:I
    .end local v8           #result:[B
    .end local v9           #resultLen:I
    .local v0, extraBytes:I
    .local v1, resultLen:I
    .local p0, number:Ljava/lang/String;
    .local p1, includeLength:Z
    :cond_d
    move v2, v0

    .end local v0           #extraBytes:I
    .restart local v2       #extraBytes:I
    goto :goto_4
.end method

.method private static appendPwCharBackToOrigDialStr(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "dialableIndex"
    .parameter "origStr"
    .parameter "dialStr"

    .prologue
    const/4 v4, 0x0

    .line 1980
    const/4 v3, 0x1

    if-ne p0, v3, :cond_0

    .line 1981
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1982
    .local v1, ret:Ljava/lang/StringBuilder;
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1983
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1990
    .end local v1           #ret:Ljava/lang/StringBuilder;
    .local v2, retStr:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 1987
    .end local v2           #retStr:Ljava/lang/String;
    :cond_0
    invoke-virtual {p2, v4, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1988
    .local v0, nonDigitStr:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #retStr:Ljava/lang/String;
    goto :goto_0
.end method

.method private static bcdToChar(B)C
    .locals 1
    .parameter "b"

    .prologue
    .line 976
    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    .line 977
    add-int/lit8 v0, p0, 0x30

    int-to-char v0, v0

    .line 984
    :goto_0
    return v0

    .line 978
    :cond_0
    packed-switch p0, :pswitch_data_0

    .line 984
    const/4 v0, 0x0

    goto :goto_0

    .line 979
    :pswitch_0
    const/16 v0, 0x2a

    goto :goto_0

    .line 980
    :pswitch_1
    const/16 v0, 0x23

    goto :goto_0

    .line 981
    :pswitch_2
    const/16 v0, 0x2c

    goto :goto_0

    .line 982
    :pswitch_3
    const/16 v0, 0x4e

    goto :goto_0

    .line 978
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static calledPartyBCDFragmentToString([BII)Ljava/lang/String;
    .locals 2
    .parameter "bytes"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 966
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p2, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 968
    .local v0, ret:Ljava/lang/StringBuilder;
    invoke-static {v0, p0, p1, p2}, Landroid/telephony/PhoneNumberUtils;->internalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BII)V

    .line 970
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static calledPartyBCDToString([BII)Ljava/lang/String;
    .locals 12
    .parameter "bytes"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const-string v11, ""

    .line 824
    const/4 v2, 0x0

    .line 825
    .local v2, prependPlus:Z
    new-instance v3, Ljava/lang/StringBuilder;

    mul-int/lit8 v5, p2, 0x2

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 827
    .local v3, ret:Ljava/lang/StringBuilder;
    if-ge p2, v8, :cond_0

    .line 828
    const-string v5, ""

    move-object v5, v11

    .line 918
    :goto_0
    return-object v5

    .line 831
    :cond_0
    aget-byte v5, p0, p1

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x91

    if-ne v5, v6, :cond_1

    .line 832
    const/4 v2, 0x1

    .line 835
    :cond_1
    add-int/lit8 v5, p1, 0x1

    sub-int v6, p2, v7

    invoke-static {v3, p0, v5, v6}, Landroid/telephony/PhoneNumberUtils;->internalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BII)V

    .line 838
    if-eqz v2, :cond_2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 840
    const-string v5, ""

    move-object v5, v11

    goto :goto_0

    .line 843
    :cond_2
    if-eqz v2, :cond_3

    .line 869
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 870
    .local v4, retString:Ljava/lang/String;
    const-string v5, "(^[#*])(.*)([#*])(.*)(#)$"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 871
    .local v1, p:Ljava/util/regex/Pattern;
    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 872
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 873
    const-string v5, ""

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 877
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #ret:Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 878
    .restart local v3       #ret:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 880
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 881
    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 882
    const-string v5, "+"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 918
    .end local v0           #m:Ljava/util/regex/Matcher;
    .end local v1           #p:Ljava/util/regex/Pattern;
    .end local v4           #retString:Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 887
    .restart local v0       #m:Ljava/util/regex/Matcher;
    .restart local v1       #p:Ljava/util/regex/Pattern;
    .restart local v4       #retString:Ljava/lang/String;
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #ret:Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 888
    .restart local v3       #ret:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 889
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 891
    const-string v5, "+"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 892
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 896
    :cond_5
    const-string v5, "(^[#*])(.*)([#*])(.*)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 897
    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 898
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 903
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #ret:Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 904
    .restart local v3       #ret:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 905
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 906
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 907
    const-string v5, "+"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 908
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 911
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #ret:Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 912
    .restart local v3       #ret:Ljava/lang/StringBuilder;
    const/16 v5, 0x2b

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 913
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static cdmaCheckAndProcessPlusCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "dialStr"

    .prologue
    const-string v4, ""

    .line 1744
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1745
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1747
    const-string v2, "gsm.operator.iso-country"

    const-string v3, ""

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1748
    .local v0, currIso:Ljava/lang/String;
    const-string v2, "gsm.sim.operator.iso-country"

    const-string v3, ""

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1749
    .local v1, defaultIso:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1750
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v3

    invoke-static {p0, v2, v3}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    .line 1756
    .end local v0           #currIso:Ljava/lang/String;
    .end local v1           #defaultIso:Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    move-object v2, p0

    goto :goto_0
.end method

.method public static cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;II)Ljava/lang/String;
    .locals 8
    .parameter "dialStr"
    .parameter "currFormat"
    .parameter "defaultFormt"

    .prologue
    const/4 v7, 0x1

    .line 1788
    move-object v3, p0

    .line 1791
    .local v3, retStr:Ljava/lang/String;
    if-eqz p0, :cond_2

    const-string v5, "+"

    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 1795
    if-ne p1, p2, :cond_7

    if-ne p1, v7, :cond_7

    .line 1797
    const/4 v2, 0x0

    .line 1798
    .local v2, postDialStr:Ljava/lang/String;
    move-object v4, p0

    .line 1801
    .local v4, tempDialStr:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1808
    :cond_0
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1810
    .local v1, networkDialStr:Ljava/lang/String;
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->processPlusCodeWithinNanp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1813
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1814
    if-nez v3, :cond_3

    .line 1815
    move-object v3, v1

    .line 1826
    :goto_0
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1827
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1828
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->findDialableIndexFromPostDialStr(Ljava/lang/String;)I

    move-result v0

    .line 1831
    .local v0, dialableIndex:I
    if-lt v0, v7, :cond_5

    .line 1832
    invoke-static {v0, v3, v2}, Landroid/telephony/PhoneNumberUtils;->appendPwCharBackToOrigDialStr(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1835
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1847
    .end local v0           #dialableIndex:I
    :cond_1
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .end local v1           #networkDialStr:Ljava/lang/String;
    .end local v2           #postDialStr:Ljava/lang/String;
    .end local v4           #tempDialStr:Ljava/lang/String;
    :cond_2
    :goto_2
    move-object v5, v3

    .line 1855
    :goto_3
    return-object v5

    .line 1817
    .restart local v1       #networkDialStr:Ljava/lang/String;
    .restart local v2       #postDialStr:Ljava/lang/String;
    .restart local v4       #tempDialStr:Ljava/lang/String;
    :cond_3
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1823
    :cond_4
    const-string v5, "checkAndProcessPlusCode: null newDialStr"

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, p0

    .line 1824
    goto :goto_3

    .line 1840
    .restart local v0       #dialableIndex:I
    :cond_5
    if-gez v0, :cond_6

    .line 1841
    const-string v2, ""

    .line 1843
    :cond_6
    const-string/jumbo v5, "wrong postDialStr="

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1852
    .end local v0           #dialableIndex:I
    .end local v1           #networkDialStr:Ljava/lang/String;
    .end local v2           #postDialStr:Ljava/lang/String;
    .end local v4           #tempDialStr:Ljava/lang/String;
    :cond_7
    const-string v5, "checkAndProcessPlusCode:non-NANP not supported"

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private static charToBCD(C)I
    .locals 3
    .parameter "c"

    .prologue
    const/16 v1, 0x30

    .line 990
    if-lt p0, v1, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 991
    sub-int v0, p0, v1

    .line 999
    :goto_0
    return v0

    .line 992
    :cond_0
    const/16 v0, 0x2a

    if-ne p0, v0, :cond_1

    .line 993
    const/16 v0, 0xa

    goto :goto_0

    .line 994
    :cond_1
    const/16 v0, 0x23

    if-ne p0, v0, :cond_2

    .line 995
    const/16 v0, 0xb

    goto :goto_0

    .line 996
    :cond_2
    const/16 v0, 0x2c

    if-ne p0, v0, :cond_3

    .line 997
    const/16 v0, 0xc

    goto :goto_0

    .line 998
    :cond_3
    const/16 v0, 0x4e

    if-ne p0, v0, :cond_4

    .line 999
    const/16 v0, 0xd

    goto :goto_0

    .line 1001
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid char for BCD "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkEmergencyTestNums(Ljava/lang/String;)Z
    .locals 2
    .parameter "eNumber"

    .prologue
    const/4 v1, 0x0

    .line 1604
    sget v0, Landroid/telephony/PhoneNumberUtils;->mEmergencyTestEnable:I

    if-nez v0, :cond_0

    move v0, v1

    .line 1614
    :goto_0
    return v0

    .line 1607
    :cond_0
    const-string v0, "922"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1611
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1614
    goto :goto_0
.end method

.method private static checkPrefixIsIgnorable(Ljava/lang/String;II)Z
    .locals 3
    .parameter "str"
    .parameter "forwardIndex"
    .parameter "backwardIndex"

    .prologue
    const/4 v2, 0x0

    .line 2283
    const/4 v0, 0x0

    .line 2284
    .local v0, trunk_prefix_was_read:Z
    :goto_0
    if-lt p2, p1, :cond_3

    .line 2285
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v1

    if-ltz v1, :cond_2

    .line 2286
    if-eqz v0, :cond_0

    move v1, v2

    .line 2301
    :goto_1
    return v1

    .line 2292
    :cond_0
    const/4 v0, 0x1

    .line 2298
    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 2294
    :cond_2
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    .line 2296
    goto :goto_1

    .line 2301
    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static compare(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "a"
    .parameter "b"

    .prologue
    .line 430
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10d0008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 432
    .local v0, useStrict:Z
    invoke-static {p1, p2, v0}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 421
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .parameter "a"
    .parameter "b"
    .parameter "useStrictComparation"

    .prologue
    .line 439
    if-eqz p2, :cond_0

    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "a"
    .parameter "b"

    .prologue
    .line 460
    const/4 v3, 0x0

    .line 461
    .local v3, numNonDialableCharsInA:I
    const/4 v4, 0x0

    .line 463
    .local v4, numNonDialableCharsInB:I
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    .end local p0
    :goto_0
    move p1, v4

    .end local v4           #numNonDialableCharsInB:I
    .local p1, numNonDialableCharsInB:I
    move v0, p0

    move p0, v3

    .line 547
    .end local v3           #numNonDialableCharsInA:I
    .local p0, numNonDialableCharsInA:I
    :goto_1
    return v0

    .line 463
    .restart local v3       #numNonDialableCharsInA:I
    .restart local v4       #numNonDialableCharsInB:I
    .local p0, a:Ljava/lang/String;
    .local p1, b:Ljava/lang/String;
    :cond_1
    const/4 p0, 0x0

    goto :goto_0

    .line 465
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 466
    :cond_3
    const/4 p0, 0x0

    move p1, v4

    .end local v4           #numNonDialableCharsInB:I
    .local p1, numNonDialableCharsInB:I
    move v0, p0

    move p0, v3

    .end local v3           #numNonDialableCharsInA:I
    .local p0, numNonDialableCharsInA:I
    goto :goto_1

    .line 469
    .restart local v3       #numNonDialableCharsInA:I
    .restart local v4       #numNonDialableCharsInB:I
    .local p0, a:Ljava/lang/String;
    .local p1, b:Ljava/lang/String;
    :cond_4
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v0

    .line 470
    .local v0, ia:I
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v1

    .line 471
    .local v1, ib:I
    const/4 v2, 0x0

    .local v2, matched:I
    move v6, v4

    .end local v4           #numNonDialableCharsInB:I
    .local v6, numNonDialableCharsInB:I
    move v4, v2

    .end local v2           #matched:I
    .local v4, matched:I
    move v2, v3

    .end local v3           #numNonDialableCharsInA:I
    .local v2, numNonDialableCharsInA:I
    move v3, v1

    .end local v1           #ib:I
    .local v3, ib:I
    move v1, v0

    .line 473
    .end local v0           #ia:I
    .local v1, ia:I
    :goto_2
    if-ltz v1, :cond_10

    if-ltz v3, :cond_10

    .line 475
    const/4 v5, 0x0

    .line 477
    .local v5, skipCmp:Z
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 479
    .local v0, ca:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-nez v7, :cond_f

    .line 480
    add-int/lit8 v1, v1, -0x1

    .line 481
    const/4 v5, 0x1

    .line 482
    add-int/lit8 v2, v2, 0x1

    move v7, v5

    .end local v5           #skipCmp:Z
    .local v7, skipCmp:Z
    move v5, v2

    .end local v2           #numNonDialableCharsInA:I
    .local v5, numNonDialableCharsInA:I
    move v2, v1

    .line 485
    .end local v1           #ia:I
    .local v2, ia:I
    :goto_3
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 487
    .local v1, cb:C
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v8

    if-nez v8, :cond_5

    .line 488
    add-int/lit8 v3, v3, -0x1

    .line 489
    const/4 v7, 0x1

    .line 490
    add-int/lit8 v6, v6, 0x1

    .line 493
    :cond_5
    if-nez v7, :cond_e

    .line 494
    if-eq v1, v0, :cond_6

    const/16 v7, 0x4e

    if-eq v0, v7, :cond_6

    .end local v7           #skipCmp:Z
    const/16 v0, 0x4e

    if-eq v1, v0, :cond_6

    .end local v0           #ca:C
    move v1, v3

    .end local v3           #ib:I
    .local v1, ib:I
    move v0, v2

    .end local v2           #ia:I
    .local v0, ia:I
    move v3, v6

    .end local v6           #numNonDialableCharsInB:I
    .local v3, numNonDialableCharsInB:I
    move v2, v5

    .line 501
    .end local v5           #numNonDialableCharsInA:I
    .local v2, numNonDialableCharsInA:I
    :goto_4
    const/4 v5, 0x7

    if-ge v4, v5, :cond_8

    .line 502
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    .end local p0           #a:Ljava/lang/String;
    sub-int/2addr p0, v2

    .line 503
    .local p0, effectiveALen:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    .end local p1           #b:Ljava/lang/String;
    sub-int/2addr p1, v3

    .line 508
    .local p1, effectiveBLen:I
    if-ne p0, p1, :cond_7

    if-ne p0, v4, :cond_7

    .line 509
    const/4 p0, 0x1

    move p1, v3

    .end local v3           #numNonDialableCharsInB:I
    .local p1, numNonDialableCharsInB:I
    move v0, p0

    move p0, v2

    .end local v2           #numNonDialableCharsInA:I
    .local p0, numNonDialableCharsInA:I
    goto :goto_1

    .line 497
    .end local v0           #ia:I
    .local v1, cb:C
    .local v2, ia:I
    .local v3, ib:I
    .restart local v5       #numNonDialableCharsInA:I
    .restart local v6       #numNonDialableCharsInB:I
    .local p0, a:Ljava/lang/String;
    .local p1, b:Ljava/lang/String;
    :cond_6
    add-int/lit8 v0, v2, -0x1

    .end local v2           #ia:I
    .restart local v0       #ia:I
    add-int/lit8 v1, v3, -0x1

    .end local v3           #ib:I
    .local v1, ib:I
    add-int/lit8 v2, v4, 0x1

    .end local v4           #matched:I
    .local v2, matched:I
    :goto_5
    move v4, v2

    .end local v2           #matched:I
    .restart local v4       #matched:I
    move v3, v1

    .end local v1           #ib:I
    .restart local v3       #ib:I
    move v2, v5

    .end local v5           #numNonDialableCharsInA:I
    .local v2, numNonDialableCharsInA:I
    move v1, v0

    .line 499
    .end local v0           #ia:I
    .local v1, ia:I
    goto :goto_2

    .line 512
    .end local v6           #numNonDialableCharsInB:I
    .restart local v0       #ia:I
    .local v1, ib:I
    .local v3, numNonDialableCharsInB:I
    .local p0, effectiveALen:I
    .local p1, effectiveBLen:I
    :cond_7
    const/4 p0, 0x0

    move p1, v3

    .end local v3           #numNonDialableCharsInB:I
    .local p1, numNonDialableCharsInB:I
    move v0, p0

    move p0, v2

    .end local v2           #numNonDialableCharsInA:I
    .local p0, numNonDialableCharsInA:I
    goto :goto_1

    .line 516
    .restart local v2       #numNonDialableCharsInA:I
    .restart local v3       #numNonDialableCharsInB:I
    .local p0, a:Ljava/lang/String;
    .local p1, b:Ljava/lang/String;
    :cond_8
    const/4 v5, 0x7

    if-lt v4, v5, :cond_a

    if-ltz v0, :cond_9

    if-gez v1, :cond_a

    .line 517
    :cond_9
    const/4 p0, 0x1

    move p1, v3

    .end local v3           #numNonDialableCharsInB:I
    .local p1, numNonDialableCharsInB:I
    move v0, p0

    move p0, v2

    .end local v2           #numNonDialableCharsInA:I
    .local p0, numNonDialableCharsInA:I
    goto/16 :goto_1

    .line 529
    .restart local v2       #numNonDialableCharsInA:I
    .restart local v3       #numNonDialableCharsInB:I
    .local p0, a:Ljava/lang/String;
    .local p1, b:Ljava/lang/String;
    :cond_a
    add-int/lit8 v4, v0, 0x1

    invoke-static {p0, v4}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefix(Ljava/lang/String;I)Z

    .end local v4           #matched:I
    move-result v4

    if-eqz v4, :cond_b

    add-int/lit8 v4, v1, 0x1

    invoke-static {p1, v4}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefix(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 532
    const/4 p0, 0x1

    move p1, v3

    .end local v3           #numNonDialableCharsInB:I
    .local p1, numNonDialableCharsInB:I
    move v0, p0

    move p0, v2

    .end local v2           #numNonDialableCharsInA:I
    .local p0, numNonDialableCharsInA:I
    goto/16 :goto_1

    .line 535
    .restart local v2       #numNonDialableCharsInA:I
    .restart local v3       #numNonDialableCharsInB:I
    .local p0, a:Ljava/lang/String;
    .local p1, b:Ljava/lang/String;
    :cond_b
    add-int/lit8 v4, v0, 0x1

    invoke-static {p0, v4}, Landroid/telephony/PhoneNumberUtils;->matchTrunkPrefix(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_c

    add-int/lit8 v4, v1, 0x1

    invoke-static {p1, v4}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefixAndCC(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 538
    const/4 p0, 0x1

    move p1, v3

    .end local v3           #numNonDialableCharsInB:I
    .local p1, numNonDialableCharsInB:I
    move v0, p0

    move p0, v2

    .end local v2           #numNonDialableCharsInA:I
    .local p0, numNonDialableCharsInA:I
    goto/16 :goto_1

    .line 541
    .restart local v2       #numNonDialableCharsInA:I
    .restart local v3       #numNonDialableCharsInB:I
    .local p0, a:Ljava/lang/String;
    .local p1, b:Ljava/lang/String;
    :cond_c
    add-int/lit8 v1, v1, 0x1

    invoke-static {p1, v1}, Landroid/telephony/PhoneNumberUtils;->matchTrunkPrefix(Ljava/lang/String;I)Z

    .end local v1           #ib:I
    move-result p1

    .end local p1           #b:Ljava/lang/String;
    if-eqz p1, :cond_d

    add-int/lit8 p1, v0, 0x1

    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefixAndCC(Ljava/lang/String;I)Z

    move-result p0

    .end local p0           #a:Ljava/lang/String;
    if-eqz p0, :cond_d

    .line 544
    const/4 p0, 0x1

    move p1, v3

    .end local v3           #numNonDialableCharsInB:I
    .local p1, numNonDialableCharsInB:I
    move v0, p0

    move p0, v2

    .end local v2           #numNonDialableCharsInA:I
    .local p0, numNonDialableCharsInA:I
    goto/16 :goto_1

    .line 547
    .end local p0           #numNonDialableCharsInA:I
    .end local p1           #numNonDialableCharsInB:I
    .restart local v2       #numNonDialableCharsInA:I
    .restart local v3       #numNonDialableCharsInB:I
    :cond_d
    const/4 p0, 0x0

    move p1, v3

    .end local v3           #numNonDialableCharsInB:I
    .restart local p1       #numNonDialableCharsInB:I
    move v0, p0

    move p0, v2

    .end local v2           #numNonDialableCharsInA:I
    .restart local p0       #numNonDialableCharsInA:I
    goto/16 :goto_1

    .local v0, ca:C
    .local v1, cb:C
    .local v2, ia:I
    .local v3, ib:I
    .restart local v4       #matched:I
    .restart local v5       #numNonDialableCharsInA:I
    .restart local v6       #numNonDialableCharsInB:I
    .restart local v7       #skipCmp:Z
    .local p0, a:Ljava/lang/String;
    .local p1, b:Ljava/lang/String;
    :cond_e
    move v1, v3

    .end local v3           #ib:I
    .local v1, ib:I
    move v0, v2

    .end local v2           #ia:I
    .local v0, ia:I
    move v2, v4

    .end local v4           #matched:I
    .local v2, matched:I
    goto :goto_5

    .end local v7           #skipCmp:Z
    .local v0, ca:C
    .local v1, ia:I
    .local v2, numNonDialableCharsInA:I
    .restart local v3       #ib:I
    .restart local v4       #matched:I
    .local v5, skipCmp:Z
    :cond_f
    move v7, v5

    .end local v5           #skipCmp:Z
    .restart local v7       #skipCmp:Z
    move v5, v2

    .end local v2           #numNonDialableCharsInA:I
    .local v5, numNonDialableCharsInA:I
    move v2, v1

    .end local v1           #ia:I
    .local v2, ia:I
    goto/16 :goto_3

    .end local v0           #ca:C
    .end local v5           #numNonDialableCharsInA:I
    .end local v7           #skipCmp:Z
    .restart local v1       #ia:I
    .local v2, numNonDialableCharsInA:I
    :cond_10
    move v0, v1

    .end local v1           #ia:I
    .local v0, ia:I
    move v1, v3

    .end local v3           #ib:I
    .local v1, ib:I
    move v3, v6

    .end local v6           #numNonDialableCharsInB:I
    .local v3, numNonDialableCharsInB:I
    goto/16 :goto_4
.end method

.method public static compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 555
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static compareStrictly(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 12
    .parameter "a"
    .parameter "b"
    .parameter "acceptInvalidCCCPrefix"

    .prologue
    .line 563
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 564
    :cond_0
    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    .line 701
    .end local p0
    .end local p1
    .end local p2
    :goto_0
    return p0

    .line 564
    .restart local p0
    .restart local p1
    .restart local p2
    :cond_1
    const/4 p0, 0x0

    goto :goto_0

    .line 565
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 566
    const/4 p0, 0x0

    goto :goto_0

    .line 569
    :cond_3
    const/4 v3, 0x0

    .line 570
    .local v3, forwardIndexA:I
    const/4 v4, 0x0

    .line 572
    .local v4, forwardIndexB:I
    invoke-static {p0, p2}, Landroid/telephony/PhoneNumberUtils;->tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    move-result-object v1

    .line 574
    .local v1, cccA:Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    invoke-static {p1, p2}, Landroid/telephony/PhoneNumberUtils;->tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    move-result-object v2

    .line 576
    .local v2, cccB:Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    const/4 v0, 0x0

    .line 577
    .local v0, bothHasCountryCallingCode:Z
    const/4 v5, 0x1

    .line 578
    .local v5, okToIgnorePrefix:Z
    const/4 v6, 0x0

    .line 579
    .local v6, trunkPrefixIsOmittedA:Z
    const/4 v7, 0x0

    .line 580
    .local v7, trunkPrefixIsOmittedB:Z
    if-eqz v1, :cond_8

    if-eqz v2, :cond_8

    .line 581
    iget v0, v1, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->countryCallingCode:I

    .end local v0           #bothHasCountryCallingCode:Z
    iget v3, v2, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->countryCallingCode:I

    .end local v3           #forwardIndexA:I
    if-eq v0, v3, :cond_4

    .line 583
    const/4 p0, 0x0

    goto :goto_0

    .line 587
    :cond_4
    const/4 v3, 0x0

    .line 588
    .end local v5           #okToIgnorePrefix:Z
    .local v3, okToIgnorePrefix:Z
    const/4 v0, 0x1

    .line 589
    .restart local v0       #bothHasCountryCallingCode:Z
    iget v1, v1, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    .line 590
    .local v1, forwardIndexA:I
    iget v2, v2, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    .end local v4           #forwardIndexB:I
    .local v2, forwardIndexB:I
    move v10, v7

    .end local v7           #trunkPrefixIsOmittedB:Z
    .local v10, trunkPrefixIsOmittedB:Z
    move v9, v6

    .end local v6           #trunkPrefixIsOmittedA:Z
    .local v9, trunkPrefixIsOmittedA:Z
    move v5, v1

    .end local v1           #forwardIndexA:I
    .local v5, forwardIndexA:I
    move v6, v2

    .end local v2           #forwardIndexB:I
    .local v6, forwardIndexB:I
    move v7, v3

    .end local v3           #okToIgnorePrefix:Z
    .local v7, okToIgnorePrefix:Z
    move v2, v0

    .line 616
    .end local v0           #bothHasCountryCallingCode:Z
    .local v2, bothHasCountryCallingCode:Z
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 617
    .local v0, backwardIndexA:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    .line 618
    .local v1, backwardIndexB:I
    :cond_5
    :goto_2
    if-lt v0, v5, :cond_d

    if-lt v1, v6, :cond_d

    .line 619
    const/4 v8, 0x0

    .line 620
    .local v8, skip_compare:Z
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 621
    .local v3, chA:C
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 622
    .local v4, chB:C
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isSeparator(C)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 623
    add-int/lit8 v0, v0, -0x1

    .line 624
    const/4 v8, 0x1

    .line 626
    :cond_6
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isSeparator(C)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 627
    add-int/lit8 v1, v1, -0x1

    .line 628
    const/4 v8, 0x1

    .line 631
    :cond_7
    if-nez v8, :cond_5

    .line 632
    if-eq v3, v4, :cond_c

    .line 633
    const/4 p0, 0x0

    goto :goto_0

    .line 591
    .end local v8           #skip_compare:Z
    .end local v9           #trunkPrefixIsOmittedA:Z
    .end local v10           #trunkPrefixIsOmittedB:Z
    .local v0, bothHasCountryCallingCode:Z
    .local v1, cccA:Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    .local v2, cccB:Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    .local v3, forwardIndexA:I
    .local v4, forwardIndexB:I
    .local v5, okToIgnorePrefix:Z
    .local v6, trunkPrefixIsOmittedA:Z
    .local v7, trunkPrefixIsOmittedB:Z
    :cond_8
    if-nez v1, :cond_9

    if-nez v2, :cond_9

    .line 594
    const/4 v1, 0x0

    .end local v5           #okToIgnorePrefix:Z
    .local v1, okToIgnorePrefix:Z
    move v10, v7

    .end local v7           #trunkPrefixIsOmittedB:Z
    .restart local v10       #trunkPrefixIsOmittedB:Z
    move v9, v6

    .end local v6           #trunkPrefixIsOmittedA:Z
    .restart local v9       #trunkPrefixIsOmittedA:Z
    move v2, v0

    .end local v0           #bothHasCountryCallingCode:Z
    .local v2, bothHasCountryCallingCode:Z
    move v5, v3

    .end local v3           #forwardIndexA:I
    .local v5, forwardIndexA:I
    move v6, v4

    .end local v4           #forwardIndexB:I
    .local v6, forwardIndexB:I
    move v7, v1

    .end local v1           #okToIgnorePrefix:Z
    .local v7, okToIgnorePrefix:Z
    goto :goto_1

    .line 596
    .end local v9           #trunkPrefixIsOmittedA:Z
    .end local v10           #trunkPrefixIsOmittedB:Z
    .restart local v0       #bothHasCountryCallingCode:Z
    .local v1, cccA:Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    .local v2, cccB:Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    .restart local v3       #forwardIndexA:I
    .restart local v4       #forwardIndexB:I
    .local v5, okToIgnorePrefix:Z
    .local v6, trunkPrefixIsOmittedA:Z
    .local v7, trunkPrefixIsOmittedB:Z
    :cond_9
    if-eqz v1, :cond_a

    .line 597
    iget v1, v1, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    .end local v3           #forwardIndexA:I
    .local v1, forwardIndexA:I
    move v3, v6

    .line 605
    .end local v6           #trunkPrefixIsOmittedA:Z
    .local v3, trunkPrefixIsOmittedA:Z
    :goto_3
    if-eqz v2, :cond_b

    .line 606
    iget v2, v2, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    .end local v4           #forwardIndexB:I
    .local v2, forwardIndexB:I
    move v10, v7

    .end local v7           #trunkPrefixIsOmittedB:Z
    .restart local v10       #trunkPrefixIsOmittedB:Z
    move v9, v3

    .end local v3           #trunkPrefixIsOmittedA:Z
    .restart local v9       #trunkPrefixIsOmittedA:Z
    move v6, v2

    .end local v2           #forwardIndexB:I
    .local v6, forwardIndexB:I
    move v2, v0

    .end local v0           #bothHasCountryCallingCode:Z
    .local v2, bothHasCountryCallingCode:Z
    move v7, v5

    .end local v5           #okToIgnorePrefix:Z
    .local v7, okToIgnorePrefix:Z
    move v5, v1

    .end local v1           #forwardIndexA:I
    .local v5, forwardIndexA:I
    goto :goto_1

    .line 599
    .end local v9           #trunkPrefixIsOmittedA:Z
    .end local v10           #trunkPrefixIsOmittedB:Z
    .restart local v0       #bothHasCountryCallingCode:Z
    .local v1, cccA:Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    .local v2, cccB:Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    .local v3, forwardIndexA:I
    .restart local v4       #forwardIndexB:I
    .local v5, okToIgnorePrefix:Z
    .local v6, trunkPrefixIsOmittedA:Z
    .local v7, trunkPrefixIsOmittedB:Z
    :cond_a
    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/telephony/PhoneNumberUtils;->tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I

    .end local v1           #cccA:Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    move-result v1

    .line 600
    .local v1, tmp:I
    if-ltz v1, :cond_1f

    .line 601
    move v1, v1

    .line 602
    .end local v3           #forwardIndexA:I
    .local v1, forwardIndexA:I
    const/4 v3, 0x1

    .end local v6           #trunkPrefixIsOmittedA:Z
    .local v3, trunkPrefixIsOmittedA:Z
    goto :goto_3

    .line 608
    :cond_b
    const/4 v2, 0x0

    invoke-static {p1, v2}, Landroid/telephony/PhoneNumberUtils;->tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I

    .end local v2           #cccB:Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    move-result v2

    .line 609
    .local v2, tmp:I
    if-ltz v2, :cond_1e

    .line 610
    move v2, v2

    .line 611
    .end local v4           #forwardIndexB:I
    .local v2, forwardIndexB:I
    const/4 v4, 0x1

    .end local v7           #trunkPrefixIsOmittedB:Z
    .local v4, trunkPrefixIsOmittedB:Z
    move v10, v4

    .end local v4           #trunkPrefixIsOmittedB:Z
    .restart local v10       #trunkPrefixIsOmittedB:Z
    move v9, v3

    .end local v3           #trunkPrefixIsOmittedA:Z
    .restart local v9       #trunkPrefixIsOmittedA:Z
    move v7, v5

    .end local v5           #okToIgnorePrefix:Z
    .local v7, okToIgnorePrefix:Z
    move v6, v2

    .end local v2           #forwardIndexB:I
    .local v6, forwardIndexB:I
    move v2, v0

    .end local v0           #bothHasCountryCallingCode:Z
    .local v2, bothHasCountryCallingCode:Z
    move v5, v1

    .end local v1           #forwardIndexA:I
    .local v5, forwardIndexA:I
    goto :goto_1

    .line 635
    .local v0, backwardIndexA:I
    .local v1, backwardIndexB:I
    .local v3, chA:C
    .local v4, chB:C
    .restart local v8       #skip_compare:Z
    :cond_c
    add-int/lit8 v0, v0, -0x1

    .line 636
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 640
    .end local v3           #chA:C
    .end local v4           #chB:C
    .end local v8           #skip_compare:Z
    :cond_d
    if-eqz v7, :cond_15

    .line 641
    if-eqz v9, :cond_e

    if-le v5, v0, :cond_f

    :cond_e
    invoke-static {p0, v5, v0}, Landroid/telephony/PhoneNumberUtils;->checkPrefixIsIgnorable(Ljava/lang/String;II)Z

    move-result v2

    .end local v2           #bothHasCountryCallingCode:Z
    if-nez v2, :cond_11

    .line 643
    :cond_f
    if-eqz p2, :cond_10

    .line 653
    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    .end local p2
    move-result p0

    goto/16 :goto_0

    .line 655
    .restart local p2
    :cond_10
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 658
    :cond_11
    if-eqz v10, :cond_12

    if-le v6, v1, :cond_13

    :cond_12
    invoke-static {p1, v5, v1}, Landroid/telephony/PhoneNumberUtils;->checkPrefixIsIgnorable(Ljava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 660
    :cond_13
    if-eqz p2, :cond_14

    .line 661
    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    .end local p2
    move-result p0

    goto/16 :goto_0

    .line 663
    .restart local p2
    :cond_14
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 676
    .restart local v2       #bothHasCountryCallingCode:Z
    :cond_15
    if-nez v2, :cond_16

    const/4 p2, 0x1

    .local p2, maybeNamp:Z
    :goto_4
    move v2, p2

    .local v2, maybeNamp:I
    move p2, v0

    .line 677
    .end local v0           #backwardIndexA:I
    .local p2, backwardIndexA:I
    :goto_5
    if-lt p2, v5, :cond_1c

    .line 678
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 679
    .local v0, chA:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 680
    if-eqz v2, :cond_17

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v0

    .end local v0           #chA:C
    const/4 v2, 0x1

    if-ne v0, v2, :cond_17

    .line 681
    .end local v2           #maybeNamp:I
    const/4 v0, 0x0

    .line 686
    :goto_6
    add-int/lit8 p2, p2, -0x1

    move v2, v0

    .line 687
    .restart local v2       #maybeNamp:I
    goto :goto_5

    .line 676
    .local v0, backwardIndexA:I
    .local v2, bothHasCountryCallingCode:Z
    .local p2, acceptInvalidCCCPrefix:Z
    :cond_16
    const/4 p2, 0x0

    goto :goto_4

    .line 683
    .end local v0           #backwardIndexA:I
    .end local v2           #bothHasCountryCallingCode:Z
    .local p2, backwardIndexA:I
    :cond_17
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 688
    .local v1, maybeNamp:I
    .local p0, backwardIndexB:I
    :goto_7
    if-lt p0, v6, :cond_19

    .line 689
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 690
    .local v0, chB:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 691
    if-eqz v1, :cond_18

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v0

    .end local v0           #chB:C
    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    .line 692
    .end local v1           #maybeNamp:I
    const/4 v0, 0x0

    .line 697
    :goto_8
    add-int/lit8 p0, p0, -0x1

    move v1, v0

    .line 698
    .restart local v1       #maybeNamp:I
    goto :goto_7

    .line 694
    .end local v1           #maybeNamp:I
    :cond_18
    const/4 p0, 0x0

    goto/16 :goto_0

    .restart local v1       #maybeNamp:I
    :cond_19
    move p1, p0

    .end local p0           #backwardIndexB:I
    .local p1, backwardIndexB:I
    move p0, p2

    .line 701
    .end local v1           #maybeNamp:I
    .end local p2           #backwardIndexA:I
    .local p0, backwardIndexA:I
    :goto_9
    const/4 p0, 0x1

    goto/16 :goto_0

    .restart local v0       #chB:C
    .restart local v1       #maybeNamp:I
    .local p0, backwardIndexB:I
    .local p1, b:Ljava/lang/String;
    .restart local p2       #backwardIndexA:I
    :cond_1a
    move v0, v1

    .end local v1           #maybeNamp:I
    .local v0, maybeNamp:I
    goto :goto_8

    .local v0, chA:C
    .local v1, backwardIndexB:I
    .local v2, maybeNamp:I
    .local p0, a:Ljava/lang/String;
    :cond_1b
    move v0, v2

    .end local v2           #maybeNamp:I
    .local v0, maybeNamp:I
    goto :goto_6

    .end local v0           #maybeNamp:I
    .restart local v2       #maybeNamp:I
    :cond_1c
    move p0, v1

    .end local v1           #backwardIndexB:I
    .local p0, backwardIndexB:I
    move v1, v2

    .end local v2           #maybeNamp:I
    .local v1, maybeNamp:I
    goto :goto_7

    .local v0, backwardIndexA:I
    .local v1, backwardIndexB:I
    .local p0, a:Ljava/lang/String;
    .local p2, acceptInvalidCCCPrefix:Z
    :cond_1d
    move p1, v1

    .end local v1           #backwardIndexB:I
    .local p1, backwardIndexB:I
    move p0, v0

    .end local v0           #backwardIndexA:I
    .local p0, backwardIndexA:I
    goto :goto_9

    .end local v6           #forwardIndexB:I
    .end local v9           #trunkPrefixIsOmittedA:Z
    .end local v10           #trunkPrefixIsOmittedB:Z
    .local v0, bothHasCountryCallingCode:Z
    .local v1, forwardIndexA:I
    .local v2, tmp:I
    .local v3, trunkPrefixIsOmittedA:Z
    .local v4, forwardIndexB:I
    .local v5, okToIgnorePrefix:Z
    .local v7, trunkPrefixIsOmittedB:Z
    .local p0, a:Ljava/lang/String;
    .local p1, b:Ljava/lang/String;
    :cond_1e
    move v10, v7

    .end local v7           #trunkPrefixIsOmittedB:Z
    .restart local v10       #trunkPrefixIsOmittedB:Z
    move v9, v3

    .end local v3           #trunkPrefixIsOmittedA:Z
    .restart local v9       #trunkPrefixIsOmittedA:Z
    move v2, v0

    .end local v0           #bothHasCountryCallingCode:Z
    .local v2, bothHasCountryCallingCode:Z
    move v6, v4

    .end local v4           #forwardIndexB:I
    .restart local v6       #forwardIndexB:I
    move v7, v5

    .end local v5           #okToIgnorePrefix:Z
    .local v7, okToIgnorePrefix:Z
    move v5, v1

    .end local v1           #forwardIndexA:I
    .local v5, forwardIndexA:I
    goto/16 :goto_1

    .end local v9           #trunkPrefixIsOmittedA:Z
    .end local v10           #trunkPrefixIsOmittedB:Z
    .restart local v0       #bothHasCountryCallingCode:Z
    .local v1, tmp:I
    .local v2, cccB:Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    .local v3, forwardIndexA:I
    .restart local v4       #forwardIndexB:I
    .local v5, okToIgnorePrefix:Z
    .local v6, trunkPrefixIsOmittedA:Z
    .local v7, trunkPrefixIsOmittedB:Z
    :cond_1f
    move v1, v3

    .end local v3           #forwardIndexA:I
    .local v1, forwardIndexA:I
    move v3, v6

    .end local v6           #trunkPrefixIsOmittedA:Z
    .local v3, trunkPrefixIsOmittedA:Z
    goto/16 :goto_3
.end method

.method public static convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "input"

    .prologue
    .line 1659
    if-nez p0, :cond_0

    move-object v4, p0

    .line 1675
    :goto_0
    return-object v4

    .line 1662
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1663
    .local v2, len:I
    if-nez v2, :cond_1

    move-object v4, p0

    .line 1664
    goto :goto_0

    .line 1667
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 1669
    .local v3, out:[C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 1670
    aget-char v0, v3, v1

    .line 1672
    .local v0, c:C
    sget-object v4, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    int-to-char v4, v4

    aput-char v4, v3, v1

    .line 1669
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1675
    .end local v0           #c:C
    :cond_2
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public static convertPostDial(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "phoneNumber"

    .prologue
    .line 302
    if-nez p0, :cond_0

    .line 303
    const/4 v4, 0x0

    .line 320
    :goto_0
    return-object v4

    .line 305
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 306
    .local v2, len:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 308
    .local v3, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 309
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 311
    .local v0, c:C
    const/16 v4, 0x2c

    if-ne v0, v4, :cond_2

    .line 312
    const/16 v0, 0x70

    .line 317
    :cond_1
    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 308
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 313
    :cond_2
    const/16 v4, 0x3b

    if-ne v0, v4, :cond_1

    .line 314
    const/16 v0, 0x77

    goto :goto_2

    .line 320
    .end local v0           #c:C
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static convertPreDial(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "phoneNumber"

    .prologue
    .line 325
    if-nez p0, :cond_0

    .line 326
    const/4 v4, 0x0

    .line 342
    :goto_0
    return-object v4

    .line 328
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 329
    .local v2, len:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 331
    .local v3, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 332
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 334
    .local v0, c:C
    const/16 v4, 0x70

    if-ne v0, v4, :cond_2

    .line 335
    const/16 v0, 0x2c

    .line 339
    :cond_1
    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 331
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 336
    :cond_2
    const/16 v4, 0x77

    if-ne v0, v4, :cond_1

    .line 337
    const/16 v0, 0x3b

    goto :goto_2

    .line 342
    .end local v0           #c:C
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "phoneNumber"

    .prologue
    .line 212
    if-nez p0, :cond_0

    .line 213
    const/4 v5, 0x0

    .line 235
    :goto_0
    return-object v5

    .line 216
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 217
    .local v3, len:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 218
    .local v4, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 220
    .local v1, firstCharAdded:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_4

    .line 221
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 227
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x2b

    if-ne v0, v5, :cond_1

    if-nez v1, :cond_3

    .line 228
    :cond_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 229
    const/4 v1, 0x1

    .line 220
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 230
    :cond_3
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isStartsPostDial(C)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 235
    .end local v0           #c:C
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "phoneNumber"

    .prologue
    .line 248
    if-nez p0, :cond_0

    .line 249
    const/4 v5, 0x0

    .line 271
    :goto_0
    return-object v5

    .line 252
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 253
    .local v3, len:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 254
    .local v4, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 256
    .local v1, haveSeenPlus:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_5

    .line 257
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 258
    .local v0, c:C
    const/16 v5, 0x2b

    if-ne v0, v5, :cond_3

    .line 259
    if-eqz v1, :cond_2

    .line 256
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 262
    :cond_2
    const/4 v1, 0x1

    .line 264
    :cond_3
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 265
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 266
    :cond_4
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isStartsPostDial(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 271
    .end local v0           #c:C
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static extractNetworkPortionExcpetWAIT(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "phoneNumber"

    .prologue
    .line 2386
    if-nez p0, :cond_0

    .line 2387
    const/4 v5, 0x0

    .line 2402
    :goto_0
    return-object v5

    .line 2389
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 2390
    .local v3, len:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2391
    .local v4, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 2393
    .local v1, firstCharAdded:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_4

    .line 2394
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2396
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v5

    if-nez v5, :cond_1

    const/16 v5, 0x3b

    if-eq v0, v5, :cond_1

    const/16 v5, 0x2c

    if-ne v0, v5, :cond_3

    .line 2397
    :cond_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2393
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2398
    :cond_3
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isStartsPostDial(C)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2402
    .end local v0           #c:C
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static extractNetworkPortionchangePlusCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "phoneNumber"

    .prologue
    .line 2412
    if-nez p1, :cond_0

    .line 2413
    const/4 v7, 0x0

    .line 2444
    :goto_0
    return-object v7

    .line 2416
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 2417
    .local v4, len:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2418
    .local v5, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 2420
    .local v1, firstCharAdded:Z
    const/4 v2, 0x0

    .line 2422
    .local v2, firstCharPause:Z
    const/4 v6, 0x0

    .line 2424
    .local v6, tempstrng:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v4, :cond_3

    .line 2425
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2427
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2428
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2424
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2429
    :cond_2
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isStartsPostDial(C)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2431
    if-nez v3, :cond_3

    .line 2432
    const/4 v2, 0x1

    .line 2439
    .end local v0           #c:C
    :cond_3
    if-nez v2, :cond_4

    .line 2440
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2441
    invoke-static {p0, v6}, Landroid/telephony/PhoneNumberUtils;->processPlusCodeWithinNanp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    .line 2442
    goto :goto_0

    :cond_4
    move-object v7, p1

    .line 2444
    goto :goto_0
.end method

.method public static extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "phoneNumber"

    .prologue
    .line 396
    if-nez p0, :cond_0

    const/4 v5, 0x0

    .line 412
    :goto_0
    return-object v5

    .line 399
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 401
    .local v2, ret:Ljava/lang/StringBuilder;
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v4

    .line 403
    .local v4, trimIndex:I
    add-int/lit8 v1, v4, 0x1

    .local v1, i:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 404
    .local v3, s:I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 406
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 407
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 408
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 404
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 412
    .end local v0           #c:C
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private static findDialableIndexFromPostDialStr(Ljava/lang/String;)I
    .locals 3
    .parameter "postDialStr"

    .prologue
    .line 1964
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1965
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1966
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    .line 1970
    .end local v0           #c:C
    :goto_1
    return v2

    .line 1964
    .restart local v0       #c:C
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1970
    .end local v0           #c:C
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public static formatJapaneseNumber(Landroid/text/Editable;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 1427
    invoke-static {p0}, Landroid/telephony/JapanesePhoneNumberFormatter;->format(Landroid/text/Editable;)V

    .line 1428
    return-void
.end method

.method public static formatNanpNumber(Landroid/text/Editable;)V
    .locals 8
    .parameter "text"

    .prologue
    .line 1307
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 1308
    .local v0, length:I
    const-string v1, "+1-nnn-nnn-nnnn"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    move p0, v0

    .line 1409
    .end local v0           #length:I
    .local p0, length:I
    :goto_0
    return-void

    .line 1311
    .restart local v0       #length:I
    .local p0, text:Landroid/text/Editable;
    :cond_0
    const/4 v1, 0x5

    if-gt v0, v1, :cond_1

    move p0, v0

    .line 1313
    .end local v0           #length:I
    .local p0, length:I
    goto :goto_0

    .line 1316
    .restart local v0       #length:I
    .local p0, text:Landroid/text/Editable;
    :cond_1
    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    .line 1319
    .local v6, saved:Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 1320
    .local v0, p:I
    :goto_1
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1321
    invoke-interface {p0, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_2

    .line 1322
    add-int/lit8 v1, v0, 0x1

    invoke-interface {p0, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_1

    .line 1324
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1327
    :cond_3
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v3

    .line 1332
    .local v3, length:I
    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 1333
    .end local v0           #p:I
    .local v1, dashPositions:[I
    const/4 v2, 0x0

    .line 1335
    .local v2, numDashes:I
    const/4 v5, 0x1

    .line 1336
    .local v5, state:I
    const/4 v4, 0x0

    .line 1337
    .local v4, numDigits:I
    const/4 v0, 0x0

    .local v0, i:I
    move v7, v5

    .end local v5           #state:I
    .local v7, state:I
    move v5, v4

    .end local v4           #numDigits:I
    .local v5, numDigits:I
    move v4, v2

    .end local v2           #numDashes:I
    .local v4, numDashes:I
    move v2, v0

    .end local v0           #i:I
    .local v2, i:I
    :goto_2
    if-ge v2, v3, :cond_a

    .line 1338
    invoke-interface {p0, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    .line 1339
    .local v0, c:C
    packed-switch v0, :pswitch_data_0

    .line 1383
    :cond_4
    :pswitch_0
    const/4 v0, 0x0

    invoke-interface {p0, v0, v3, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .end local v0           #c:C
    move p0, v3

    .line 1384
    .end local v3           #length:I
    .local p0, length:I
    goto :goto_0

    .line 1341
    .restart local v0       #c:C
    .restart local v3       #length:I
    .local p0, text:Landroid/text/Editable;
    :pswitch_1
    if-eqz v5, :cond_5

    const/4 v0, 0x2

    if-ne v7, v0, :cond_6

    .line 1342
    .end local v0           #c:C
    :cond_5
    const/4 v0, 0x3

    .end local v7           #state:I
    .local v0, state:I
    move v7, v0

    .line 1337
    .end local v0           #state:I
    .restart local v7       #state:I
    :goto_3
    add-int/lit8 v0, v2, 0x1

    .end local v2           #i:I
    .local v0, i:I
    move v2, v0

    .end local v0           #i:I
    .restart local v2       #i:I
    goto :goto_2

    .line 1355
    :cond_6
    :pswitch_2
    const/4 v0, 0x2

    if-ne v7, v0, :cond_7

    .line 1357
    const/4 v0, 0x0

    invoke-interface {p0, v0, v3, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    move p0, v3

    .line 1358
    .end local v3           #length:I
    .local p0, length:I
    goto :goto_0

    .line 1359
    .restart local v3       #length:I
    .local p0, text:Landroid/text/Editable;
    :cond_7
    const/4 v0, 0x3

    if-ne v7, v0, :cond_8

    .line 1361
    add-int/lit8 v0, v4, 0x1

    .end local v4           #numDashes:I
    .local v0, numDashes:I
    aput v2, v1, v4

    .line 1366
    :goto_4
    const/4 v7, 0x1

    .line 1367
    add-int/lit8 v4, v5, 0x1

    .end local v5           #numDigits:I
    .local v4, numDigits:I
    move v5, v4

    .end local v4           #numDigits:I
    .restart local v5       #numDigits:I
    move v4, v0

    .line 1368
    .end local v0           #numDashes:I
    .local v4, numDashes:I
    goto :goto_3

    .line 1362
    :cond_8
    const/4 v0, 0x4

    if-eq v7, v0, :cond_e

    const/4 v0, 0x3

    if-eq v5, v0, :cond_9

    const/4 v0, 0x6

    if-ne v5, v0, :cond_e

    .line 1364
    :cond_9
    add-int/lit8 v0, v4, 0x1

    .end local v4           #numDashes:I
    .restart local v0       #numDashes:I
    aput v2, v1, v4

    goto :goto_4

    .line 1371
    .local v0, c:C
    .restart local v4       #numDashes:I
    :pswitch_3
    const/4 v0, 0x4

    .end local v7           #state:I
    .local v0, state:I
    move v7, v0

    .line 1372
    .end local v0           #state:I
    .restart local v7       #state:I
    goto :goto_3

    .line 1375
    .local v0, c:C
    :pswitch_4
    if-nez v2, :cond_4

    .line 1377
    const/4 v0, 0x2

    .end local v7           #state:I
    .local v0, state:I
    move v7, v0

    .line 1378
    .end local v0           #state:I
    .restart local v7       #state:I
    goto :goto_3

    .line 1388
    :cond_a
    const/4 v0, 0x7

    if-ne v5, v0, :cond_d

    .line 1390
    add-int/lit8 v0, v4, -0x1

    .end local v4           #numDashes:I
    .local v0, numDashes:I
    move v2, v0

    .line 1394
    .end local v0           #numDashes:I
    .local v2, numDashes:I
    :goto_5
    const/4 v0, 0x0

    .end local v5           #numDigits:I
    .end local v6           #saved:Ljava/lang/CharSequence;
    .local v0, i:I
    :goto_6
    if-ge v0, v2, :cond_b

    .line 1395
    aget v4, v1, v0

    .line 1396
    .local v4, pos:I
    add-int v5, v4, v0

    add-int/2addr v4, v0

    const-string v6, "-"

    .end local v4           #pos:I
    invoke-interface {p0, v5, v4, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1394
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1400
    :cond_b
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 1401
    .end local v1           #dashPositions:[I
    .end local v2           #numDashes:I
    .local v0, len:I
    :goto_7
    if-lez v0, :cond_c

    .line 1402
    const/4 v1, 0x1

    sub-int v1, v0, v1

    invoke-interface {p0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_c

    .line 1403
    const/4 v1, 0x1

    sub-int v1, v0, v1

    invoke-interface {p0, v1, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 1404
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    :cond_c
    move p0, v3

    .line 1409
    .end local v3           #length:I
    .local p0, length:I
    goto/16 :goto_0

    .end local v0           #len:I
    .restart local v1       #dashPositions:[I
    .local v2, i:I
    .restart local v3       #length:I
    .local v4, numDashes:I
    .restart local v5       #numDigits:I
    .restart local v6       #saved:Ljava/lang/CharSequence;
    .local p0, text:Landroid/text/Editable;
    :cond_d
    move v2, v4

    .end local v4           #numDashes:I
    .local v2, numDashes:I
    goto :goto_5

    .local v2, i:I
    .restart local v4       #numDashes:I
    :cond_e
    move v0, v4

    .end local v4           #numDashes:I
    .local v0, numDashes:I
    goto :goto_4

    .line 1339
    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static formatNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "source"

    .prologue
    .line 1220
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1221
    .local v0, text:Landroid/text/SpannableStringBuilder;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeForLocale(Ljava/util/Locale;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Landroid/text/Editable;I)V

    .line 1222
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatNumber(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "source"
    .parameter "defaultFormattingType"

    .prologue
    .line 1237
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1238
    .local v0, text:Landroid/text/SpannableStringBuilder;
    invoke-static {v0, p1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Landroid/text/Editable;I)V

    .line 1239
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatNumber(Landroid/text/Editable;I)V
    .locals 6
    .parameter "text"
    .parameter "defaultFormattingType"

    .prologue
    const/16 v5, 0x31

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1264
    move v0, p1

    .line 1266
    .local v0, formatType:I
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    if-le v1, v4, :cond_0

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_0

    .line 1267
    invoke-interface {p0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_2

    .line 1268
    const/4 v0, 0x1

    .line 1277
    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1285
    :cond_1
    :goto_1
    return-void

    .line 1269
    :cond_2
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    invoke-interface {p0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x38

    if-ne v1, v2, :cond_1

    invoke-interface {p0, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_1

    .line 1271
    const/4 v0, 0x2

    goto :goto_0

    .line 1279
    :pswitch_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->formatNanpNumber(Landroid/text/Editable;)V

    goto :goto_1

    .line 1282
    :pswitch_1
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->formatJapaneseNumber(Landroid/text/Editable;)V

    goto :goto_1

    .line 1277
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getDefaultIdp()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1860
    const/4 v0, 0x0

    .line 1861
    .local v0, ps:Ljava/lang/String;
    const-string v1, "ro.cdma.idpstring"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1862
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1863
    const-string v0, "011"

    .line 1865
    :cond_0
    return-object v0
.end method

.method public static getEmergencyServiceCategory(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "number"

    .prologue
    .line 1512
    const/4 v0, 0x0

    .line 1513
    .local v0, clir:I
    const/4 v1, 0x0

    .line 1516
    .local v1, isRoaming:I
    if-nez p0, :cond_0

    const/4 p0, 0x0

    move v10, v1

    .end local v1           #isRoaming:I
    .local v10, isRoaming:I
    move-object v1, p0

    move p0, v0

    .end local v0           #clir:I
    .local p0, clir:I
    move v0, v10

    .line 1587
    .end local v10           #isRoaming:I
    .local v0, isRoaming:I
    :goto_0
    return-object v1

    .line 1520
    .local v0, clir:I
    .restart local v1       #isRoaming:I
    .local p0, number:Ljava/lang/String;
    :cond_0
    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1522
    .local v7, words:[Ljava/lang/String;
    array-length p0, v7

    .end local p0           #number:Ljava/lang/String;
    const/4 v2, 0x3

    if-ne p0, v2, :cond_1

    .line 1523
    const/4 p0, 0x0

    aget-object v0, v7, p0

    .line 1524
    .local v0, dialNumber:Ljava/lang/String;
    const/4 p0, 0x1

    aget-object p0, v7, p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 1525
    .local p0, clir:I
    const/4 v1, 0x2

    aget-object v1, v7, v1

    .end local v1           #isRoaming:I
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .restart local v1       #isRoaming:I
    move v5, v1

    .end local v1           #isRoaming:I
    .local v5, isRoaming:I
    move v10, p0

    .end local p0           #clir:I
    .local v10, clir:I
    move-object p0, v0

    .end local v0           #dialNumber:Ljava/lang/String;
    .local p0, dialNumber:Ljava/lang/String;
    move v0, v10

    .line 1532
    .end local v10           #clir:I
    .local v0, clir:I
    :goto_1
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1537
    .end local p0           #dialNumber:Ljava/lang/String;
    .local v1, dialNumber:Ljava/lang/String;
    const-string v2, ""

    .line 1539
    .local v2, numbers:Ljava/lang/String;
    const/4 p0, 0x0

    .local p0, i:I
    move-object v4, v2

    .line 1540
    .end local v2           #numbers:Ljava/lang/String;
    .local v4, numbers:Ljava/lang/String;
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ril.ecclist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1541
    .local v2, key:Ljava/lang/String;
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1543
    .local v3, n:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    .line 1555
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    .end local p0           #i:I
    if-nez p0, :cond_d

    .line 1558
    const-string p0, ","

    invoke-virtual {v4, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .local p0, arr$:[Ljava/lang/String;
    array-length v6, p0

    .local v6, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v4, v2

    .end local v2           #i$:I
    .end local v3           #n:Ljava/lang/String;
    .local v4, i$:I
    :goto_3
    if-ge v4, v6, :cond_c

    aget-object v2, p0, v4

    .line 1559
    .local v2, emergencyNum:Ljava/lang/String;
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1560
    .local v2, splitStr:[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v2, v3

    .line 1561
    .local v3, eccNum:Ljava/lang/String;
    array-length v8, v2

    const/4 v9, 0x1

    if-le v8, v9, :cond_3

    const/4 v8, 0x1

    aget-object v2, v2, v8

    .line 1562
    .local v2, eccCat:Ljava/lang/String;
    :goto_4
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .end local v3           #eccNum:Ljava/lang/String;
    if-eqz v3, :cond_b

    .line 1564
    array-length p0, v7

    .end local p0           #arr$:[Ljava/lang/String;
    const/4 v3, 0x3

    if-ne p0, v3, :cond_a

    if-nez v5, :cond_a

    .line 1566
    const-string p0, "110"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 1567
    if-nez v0, :cond_4

    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    :goto_5
    move-object v1, p0

    move p0, v0

    .end local v0           #clir:I
    .local p0, clir:I
    move v0, v5

    .end local v5           #isRoaming:I
    .local v0, isRoaming:I
    goto/16 :goto_0

    .line 1528
    .end local v2           #eccCat:Ljava/lang/String;
    .end local v4           #i$:I
    .end local v6           #len$:I
    .end local p0           #clir:I
    .local v0, clir:I
    .local v1, isRoaming:I
    :cond_1
    const/4 p0, 0x0

    aget-object p0, v7, p0

    .local p0, dialNumber:Ljava/lang/String;
    move v5, v1

    .end local v1           #isRoaming:I
    .restart local v5       #isRoaming:I
    goto :goto_1

    .line 1546
    .local v1, dialNumber:Ljava/lang/String;
    .local v2, key:Ljava/lang/String;
    .local v3, n:Ljava/lang/String;
    .local v4, numbers:Ljava/lang/String;
    .local p0, i:I
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .end local v2           #key:Ljava/lang/String;
    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    .line 1548
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1539
    .end local v4           #numbers:Ljava/lang/String;
    .local v2, numbers:Ljava/lang/String;
    add-int/lit8 p0, p0, 0x1

    move-object v4, v2

    .end local v2           #numbers:Ljava/lang/String;
    .restart local v4       #numbers:Ljava/lang/String;
    goto/16 :goto_2

    .line 1561
    .local v2, splitStr:[Ljava/lang/String;
    .local v3, eccNum:Ljava/lang/String;
    .local v4, i$:I
    .restart local v6       #len$:I
    .local p0, arr$:[Ljava/lang/String;
    :cond_3
    const-string v2, ""

    goto :goto_4

    .line 1567
    .end local v3           #eccNum:Ljava/lang/String;
    .end local p0           #arr$:[Ljava/lang/String;
    .local v2, eccCat:Ljava/lang/String;
    :cond_4
    const/4 p0, 0x0

    goto :goto_5

    .line 1568
    :cond_5
    const-string p0, "118"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 1569
    if-nez v0, :cond_6

    const/16 p0, 0x8

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    :goto_6
    move-object v1, p0

    move p0, v0

    .end local v0           #clir:I
    .local p0, clir:I
    move v0, v5

    .end local v5           #isRoaming:I
    .local v0, isRoaming:I
    goto/16 :goto_0

    .end local p0           #clir:I
    .local v0, clir:I
    .restart local v5       #isRoaming:I
    :cond_6
    const/4 p0, 0x0

    goto :goto_6

    .line 1570
    :cond_7
    const-string p0, "119"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 1571
    if-nez v0, :cond_8

    const/4 p0, 0x6

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    :goto_7
    move-object v1, p0

    move p0, v0

    .end local v0           #clir:I
    .restart local p0       #clir:I
    move v0, v5

    .end local v5           #isRoaming:I
    .local v0, isRoaming:I
    goto/16 :goto_0

    .end local p0           #clir:I
    .local v0, clir:I
    .restart local v5       #isRoaming:I
    :cond_8
    const/4 p0, 0x0

    goto :goto_7

    :cond_9
    move p0, v0

    .end local v0           #clir:I
    .restart local p0       #clir:I
    move-object v1, v2

    move v0, v5

    .line 1573
    .end local v5           #isRoaming:I
    .local v0, isRoaming:I
    goto/16 :goto_0

    .end local p0           #clir:I
    .local v0, clir:I
    .restart local v5       #isRoaming:I
    :cond_a
    move p0, v0

    .end local v0           #clir:I
    .restart local p0       #clir:I
    move-object v1, v2

    move v0, v5

    .line 1576
    .end local v5           #isRoaming:I
    .local v0, isRoaming:I
    goto/16 :goto_0

    .line 1558
    .local v0, clir:I
    .restart local v5       #isRoaming:I
    .local p0, arr$:[Ljava/lang/String;
    :cond_b
    add-int/lit8 v2, v4, 0x1

    .end local v4           #i$:I
    .local v2, i$:I
    move v4, v2

    .end local v2           #i$:I
    .restart local v4       #i$:I
    goto/16 :goto_3

    .line 1580
    :cond_c
    const/4 p0, 0x0

    move-object v1, p0

    move p0, v0

    .end local v0           #clir:I
    .local p0, clir:I
    move v0, v5

    .end local v5           #isRoaming:I
    .local v0, isRoaming:I
    goto/16 :goto_0

    .line 1584
    .end local v6           #len$:I
    .end local p0           #clir:I
    .local v0, clir:I
    .local v2, key:Ljava/lang/String;
    .local v3, n:Ljava/lang/String;
    .local v4, numbers:Ljava/lang/String;
    .restart local v5       #isRoaming:I
    :cond_d
    const-string p0, "112"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    const-string p0, "911"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    .line 1585
    :cond_e
    const-string p0, ""

    move-object v1, p0

    move p0, v0

    .end local v0           #clir:I
    .restart local p0       #clir:I
    move v0, v5

    .end local v5           #isRoaming:I
    .local v0, isRoaming:I
    goto/16 :goto_0

    .line 1587
    .end local p0           #clir:I
    .local v0, clir:I
    .restart local v5       #isRoaming:I
    :cond_f
    const/4 p0, 0x0

    move-object v1, p0

    move p0, v0

    .end local v0           #clir:I
    .restart local p0       #clir:I
    move v0, v5

    .end local v5           #isRoaming:I
    .local v0, isRoaming:I
    goto/16 :goto_0
.end method

.method public static getFormatTypeForLocale(Ljava/util/Locale;)I
    .locals 2
    .parameter "locale"

    .prologue
    .line 1250
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 1252
    .local v0, country:Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private static getFormatTypeFromCountryCode(Ljava/lang/String;)I
    .locals 3
    .parameter "country"

    .prologue
    .line 1878
    sget-object v2, Landroid/telephony/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    array-length v1, v2

    .line 1879
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1880
    sget-object v2, Landroid/telephony/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 1881
    const/4 v2, 0x1

    .line 1887
    :goto_1
    return v2

    .line 1879
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1884
    :cond_1
    const-string v2, "jp"

    invoke-virtual {v2, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 1885
    const/4 v2, 0x2

    goto :goto_1

    .line 1887
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;
    .locals 12
    .parameter "intent"
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 152
    const/4 v8, 0x0

    .line 154
    .local v8, number:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 155
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    .line 157
    .local v10, scheme:Ljava/lang/String;
    const-string/jumbo v0, "tel"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 195
    :goto_0
    return-object v0

    .line 163
    :cond_0
    const-string/jumbo v0, "voicemail"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCompleteVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 167
    :cond_1
    if-nez p1, :cond_2

    move-object v0, v3

    .line 168
    goto :goto_0

    .line 171
    :cond_2
    invoke-virtual {p0, p1}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 172
    .local v11, type:Ljava/lang/String;
    const/4 v9, 0x0

    .line 175
    .local v9, phoneColumn:Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    .line 176
    .local v6, authority:Ljava/lang/String;
    const-string v0, "contacts"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 177
    const-string v9, "number"

    .line 182
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v9, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 185
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_5

    .line 187
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 188
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 191
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object v0, v8

    .line 195
    goto :goto_0

    .line 178
    .end local v7           #c:Landroid/database/Cursor;
    :cond_6
    const-string v0, "com.android.contacts"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 179
    const-string v9, "data1"

    goto :goto_1

    .line 191
    .restart local v7       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getStrippedReversed(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "phoneNumber"

    .prologue
    .line 745
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 747
    .local v0, np:Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 749
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static indexOfLastNetworkChar(Ljava/lang/String;)I
    .locals 6
    .parameter "a"

    .prologue
    const/4 v5, 0x1

    .line 372
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 374
    .local v0, origLength:I
    const/16 v4, 0x2c

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 375
    .local v1, pIndex:I
    const/16 v4, 0x3b

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 377
    .local v3, wIndex:I
    invoke-static {v1, v3}, Landroid/telephony/PhoneNumberUtils;->minPositive(II)I

    move-result v2

    .line 379
    .local v2, trimIndex:I
    if-gez v2, :cond_0

    .line 380
    sub-int v4, v0, v5

    .line 382
    :goto_0
    return v4

    :cond_0
    sub-int v4, v2, v5

    goto :goto_0
.end method

.method private static internalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BII)V
    .locals 5
    .parameter "sb"
    .parameter "bytes"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 924
    move v2, p2

    .local v2, i:I
    :goto_0
    add-int v3, p3, p2

    if-ge v2, v3, :cond_0

    .line 928
    aget-byte v3, p1, v2

    and-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->bcdToChar(B)C

    move-result v1

    .line 930
    .local v1, c:C
    if-nez v1, :cond_1

    .line 957
    .end local v1           #c:C
    :cond_0
    return-void

    .line 933
    .restart local v1       #c:C
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 942
    aget-byte v3, p1, v2

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    int-to-byte v0, v3

    .line 944
    .local v0, b:B
    const/16 v3, 0xf

    if-ne v0, v3, :cond_2

    add-int/lit8 v3, v2, 0x1

    add-int v4, p3, p2

    if-eq v3, v4, :cond_0

    .line 949
    :cond_2
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->bcdToChar(B)C

    move-result v1

    .line 950
    if-eqz v1, :cond_0

    .line 954
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 924
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .parameter "np"
    .parameter "numDigits"

    .prologue
    .line 758
    if-nez p0, :cond_0

    const/4 v5, 0x0

    .line 771
    :goto_0
    return-object v5

    .line 760
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 761
    .local v3, ret:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 763
    .local v2, length:I
    const/4 v5, 0x1

    sub-int v1, v2, v5

    .local v1, i:I
    move v4, v2

    .line 764
    .local v4, s:I
    :goto_1
    if-ltz v1, :cond_1

    sub-int v5, v4, v1

    if-gt v5, p1, :cond_1

    .line 766
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 768
    .local v0, c:C
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 764
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 771
    .end local v0           #c:C
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static final is12Key(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 108
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAccountInfoNumber(Ljava/lang/String;)Z
    .locals 1
    .parameter "number"

    .prologue
    .line 2370
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2375
    const-string v0, "*4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isCheckInvalidNumber(Ljava/lang/String;)Z
    .locals 5
    .parameter "phoneNumber"

    .prologue
    const/4 v4, 0x1

    .line 2306
    if-nez p0, :cond_0

    move v3, v4

    .line 2318
    :goto_0
    return v3

    .line 2310
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 2311
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 2312
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2313
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isCheckValidRange(C)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v4

    .line 2314
    goto :goto_0

    .line 2311
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2318
    .end local v0           #c:C
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isCheckValidRange(C)Z
    .locals 2
    .parameter "c"

    .prologue
    const/4 v1, 0x1

    .line 2323
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    move v0, v1

    .line 2333
    :goto_0
    return v0

    .line 2325
    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-ne p0, v0, :cond_2

    :cond_1
    move v0, v1

    .line 2331
    goto :goto_0

    .line 2333
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isCountryCallingCode(I)Z
    .locals 1
    .parameter "countryCallingCodeCandidate"

    .prologue
    .line 2138
    if-lez p0, :cond_0

    sget v0, Landroid/telephony/PhoneNumberUtils;->CCC_LENGTH:I

    if-ge p0, v0, :cond_0

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->COUNTLY_CALLING_CALL:[Z

    aget-boolean v0, v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCustomerServiceNumber(Ljava/lang/String;)Z
    .locals 1
    .parameter "number"

    .prologue
    .line 2350
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2356
    const-string v0, "*228"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "*22803"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "*22805"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "*2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isDefaultPlusCode(Ljava/lang/String;)Z
    .locals 5
    .parameter "dialStr"

    .prologue
    const/16 v4, 0x31

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2480
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    move v0, v2

    .line 2488
    :goto_0
    return v0

    .line 2485
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_1

    move v0, v3

    .line 2486
    goto :goto_0

    :cond_1
    move v0, v2

    .line 2488
    goto :goto_0
.end method

.method public static final isDialable(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 114
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4e

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isDialable(Ljava/lang/String;)Z
    .locals 3
    .parameter "address"

    .prologue
    .line 1029
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1030
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1031
    const/4 v2, 0x0

    .line 1034
    :goto_1
    return v2

    .line 1029
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1034
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static isEmergencyNumber(Ljava/lang/String;)Z
    .locals 8
    .parameter "number"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1459
    if-nez p0, :cond_0

    move v5, v6

    .line 1492
    :goto_0
    return v5

    .line 1465
    :cond_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1469
    const-string v5, "ril.ecclist"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1470
    .local v4, numbers:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1472
    const-string v5, "ro.ril.ecclist"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1477
    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1480
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 1481
    .local v1, emergencyNum:Ljava/lang/String;
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v7

    .line 1482
    goto :goto_0

    .line 1480
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1           #emergencyNum:Ljava/lang/String;
    :cond_3
    move v5, v6

    .line 1486
    goto :goto_0

    .line 1492
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_4
    const-string v5, "911"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "*911"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "#911"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->checkEmergencyTestNums(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_5
    move v5, v7

    goto :goto_0

    :cond_6
    move v5, v6

    goto :goto_0
.end method

.method public static isGlobalPhoneNumber(Ljava/lang/String;)Z
    .locals 2
    .parameter "phoneNumber"

    .prologue
    .line 1020
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1021
    const/4 v1, 0x0

    .line 1025
    :goto_0
    return v1

    .line 1024
    :cond_0
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->GLOBAL_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1025
    .local v0, match:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    goto :goto_0
.end method

.method public static isISODigit(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 102
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isNanp(Ljava/lang/String;)Z
    .locals 5
    .parameter "dialStr"

    .prologue
    const/16 v4, 0xa

    .line 1895
    const/4 v2, 0x0

    .line 1896
    .local v2, retVal:Z
    if-eqz p0, :cond_2

    .line 1897
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 1898
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isTwoToNine(C)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isTwoToNine(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1900
    const/4 v2, 0x1

    .line 1901
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 1902
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1903
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1904
    const/4 v2, 0x0

    .line 1913
    .end local v0           #c:C
    .end local v1           #i:I
    :cond_0
    :goto_1
    return v2

    .line 1901
    .restart local v0       #c:C
    .restart local v1       #i:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1911
    .end local v0           #c:C
    .end local v1           #i:I
    :cond_2
    const-string v3, "isNanp: null dialStr passed in"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static final isNonSeparator(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 126
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2c

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isNonSeparator(Ljava/lang/String;)Z
    .locals 3
    .parameter "address"

    .prologue
    .line 1038
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1039
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1040
    const/4 v2, 0x0

    .line 1043
    :goto_1
    return v2

    .line 1038
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1043
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private static isOneNanp(Ljava/lang/String;)Z
    .locals 4
    .parameter "dialStr"

    .prologue
    .line 1920
    const/4 v1, 0x0

    .line 1921
    .local v1, retVal:Z
    if-eqz p0, :cond_1

    .line 1922
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1923
    .local v0, newDialStr:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    if-ne v2, v3, :cond_0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNanp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1924
    const/4 v1, 0x1

    .line 1929
    .end local v0           #newDialStr:Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 1927
    :cond_1
    const-string v2, "isOneNanp: null dialStr passed in"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static final isReallyDialable(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 120
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSeparator(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 140
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x61

    if-gt v0, p0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x41

    if-gt v0, p0, :cond_1

    const/16 v0, 0x5a

    if-le p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isStartsPostDial(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 135
    const/16 v0, 0x2c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3b

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isTwoToNine(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 1869
    const/16 v0, 0x32

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 1870
    const/4 v0, 0x1

    .line 1872
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVoiceMailNumber(Ljava/lang/String;)Z
    .locals 4
    .parameter "number"

    .prologue
    const/4 v3, 0x0

    .line 1634
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1641
    .local v1, vmNumber:Ljava/lang/String;
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1645
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0, v1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .end local v1           #vmNumber:Ljava/lang/String;
    :goto_0
    return v2

    .line 1635
    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, ex:Ljava/lang/SecurityException;
    move v2, v3

    .line 1636
    goto :goto_0

    .end local v0           #ex:Ljava/lang/SecurityException;
    .restart local v1       #vmNumber:Ljava/lang/String;
    :cond_0
    move v2, v3

    .line 1645
    goto :goto_0
.end method

.method public static isWellFormedSmsAddress(Ljava/lang/String;)Z
    .locals 2
    .parameter "address"

    .prologue
    .line 1011
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1014
    .local v0, networkPortion:Ljava/lang/String;
    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 361
    const-string v0, "PhoneNumberUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    return-void
.end method

.method private static matchIntlPrefix(Ljava/lang/String;I)Z
    .locals 8
    .parameter "a"
    .parameter "len"

    .prologue
    const/16 v7, 0x31

    const/16 v6, 0x30

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2011
    const/4 v2, 0x0

    .line 2012
    .local v2, state:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p1, :cond_6

    .line 2013
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2015
    .local v0, c:C
    packed-switch v2, :pswitch_data_0

    .line 2034
    :pswitch_0
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    .line 2040
    .end local v0           #c:C
    :goto_1
    return v3

    .line 2017
    .restart local v0       #c:C
    :pswitch_1
    const/16 v3, 0x2b

    if-ne v0, v3, :cond_1

    const/4 v2, 0x1

    .line 2012
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2018
    :cond_1
    if-ne v0, v6, :cond_2

    const/4 v2, 0x2

    goto :goto_2

    .line 2019
    :cond_2
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_1

    .line 2023
    :pswitch_2
    if-ne v0, v6, :cond_3

    const/4 v2, 0x3

    goto :goto_2

    .line 2024
    :cond_3
    if-ne v0, v7, :cond_4

    const/4 v2, 0x4

    goto :goto_2

    .line 2025
    :cond_4
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_1

    .line 2029
    :pswitch_3
    if-ne v0, v7, :cond_5

    const/4 v2, 0x5

    goto :goto_2

    .line 2030
    :cond_5
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_1

    .line 2040
    .end local v0           #c:C
    :cond_6
    if-eq v2, v5, :cond_7

    const/4 v3, 0x3

    if-eq v2, v3, :cond_7

    const/4 v3, 0x5

    if-ne v2, v3, :cond_8

    :cond_7
    move v3, v5

    goto :goto_1

    :cond_8
    move v3, v4

    goto :goto_1

    .line 2015
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static matchIntlPrefixAndCC(Ljava/lang/String;I)Z
    .locals 7
    .parameter "a"
    .parameter "len"

    .prologue
    const/16 v6, 0x31

    const/16 v5, 0x30

    const/4 v4, 0x0

    .line 2050
    const/4 v2, 0x0

    .line 2051
    .local v2, state:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p1, :cond_8

    .line 2052
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2054
    .local v0, c:C
    packed-switch v2, :pswitch_data_0

    .line 2086
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    .line 2090
    .end local v0           #c:C
    :goto_1
    return v3

    .line 2056
    .restart local v0       #c:C
    :pswitch_0
    const/16 v3, 0x2b

    if-ne v0, v3, :cond_1

    const/4 v2, 0x1

    .line 2051
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2057
    :cond_1
    if-ne v0, v5, :cond_2

    const/4 v2, 0x2

    goto :goto_2

    .line 2058
    :cond_2
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_1

    .line 2062
    :pswitch_1
    if-ne v0, v5, :cond_3

    const/4 v2, 0x3

    goto :goto_2

    .line 2063
    :cond_3
    if-ne v0, v6, :cond_4

    const/4 v2, 0x4

    goto :goto_2

    .line 2064
    :cond_4
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_1

    .line 2068
    :pswitch_2
    if-ne v0, v6, :cond_5

    const/4 v2, 0x5

    goto :goto_2

    .line 2069
    :cond_5
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_1

    .line 2075
    :pswitch_3
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v2, 0x6

    goto :goto_2

    .line 2076
    :cond_6
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_1

    .line 2081
    :pswitch_4
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v3

    if-eqz v3, :cond_7

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2082
    :cond_7
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_1

    .line 2090
    .end local v0           #c:C
    :cond_8
    const/4 v3, 0x6

    if-eq v2, v3, :cond_9

    const/4 v3, 0x7

    if-eq v2, v3, :cond_9

    const/16 v3, 0x8

    if-ne v2, v3, :cond_a

    :cond_9
    const/4 v3, 0x1

    goto :goto_1

    :cond_a
    move v3, v4

    goto :goto_1

    .line 2054
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private static matchTrunkPrefix(Ljava/lang/String;I)Z
    .locals 4
    .parameter "a"
    .parameter "len"

    .prologue
    .line 2098
    const/4 v1, 0x0

    .line 2100
    .local v1, found:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, p1, :cond_2

    .line 2101
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2103
    .local v0, c:C
    const/16 v3, 0x30

    if-ne v0, v3, :cond_1

    if-nez v1, :cond_1

    .line 2104
    const/4 v1, 0x1

    .line 2100
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2105
    :cond_1
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2106
    const/4 v3, 0x0

    .line 2110
    .end local v0           #c:C
    :goto_1
    return v3

    :cond_2
    move v3, v1

    goto :goto_1
.end method

.method private static minPositive(II)I
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 349
    if-ltz p0, :cond_1

    if-ltz p1, :cond_1

    .line 350
    if-ge p0, p1, :cond_0

    move v0, p0

    .line 356
    :goto_0
    return v0

    :cond_0
    move v0, p1

    .line 350
    goto :goto_0

    .line 351
    :cond_1
    if-ltz p0, :cond_2

    move v0, p0

    .line 352
    goto :goto_0

    .line 353
    :cond_2
    if-ltz p1, :cond_3

    move v0, p1

    .line 354
    goto :goto_0

    .line 356
    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static networkPortionToCalledPartyBCD(Ljava/lang/String;)[B
    .locals 2
    .parameter "s"

    .prologue
    .line 1053
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1054
    .local v0, networkPortion:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    move-result-object v1

    return-object v1
.end method

.method public static networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B
    .locals 2
    .parameter "s"

    .prologue
    .line 1073
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1074
    .local v0, networkPortion:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    move-result-object v1

    return-object v1
.end method

.method public static numberToCalledPartyBCD(Ljava/lang/String;)[B
    .locals 1
    .parameter "number"

    .prologue
    .line 1086
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    move-result-object v0

    return-object v0
.end method

.method private static numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B
    .locals 11
    .parameter "number"
    .parameter "includeLength"

    .prologue
    .line 1095
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 1096
    .local v5, numberLenReal:I
    move v0, v5

    .line 1097
    .local v0, numberLenEffective:I
    const/16 v1, 0x2b

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    move v3, v1

    .line 1098
    .local v3, hasPlus:Z
    :goto_0
    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 1100
    :cond_0
    if-nez v0, :cond_2

    const/4 p0, 0x0

    .line 1125
    .end local v0           #numberLenEffective:I
    .end local p0
    .end local p1
    :goto_1
    return-object p0

    .line 1097
    .end local v3           #hasPlus:Z
    .restart local v0       #numberLenEffective:I
    .restart local p0
    .restart local p1
    :cond_1
    const/4 v1, 0x0

    move v3, v1

    goto :goto_0

    .line 1102
    .restart local v3       #hasPlus:Z
    :cond_2
    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v1, v0, 0x2

    .line 1103
    .end local v0           #numberLenEffective:I
    .local v1, resultLen:I
    const/4 v0, 0x1

    .line 1104
    .local v0, extraBytes:I
    if-eqz p1, :cond_9

    add-int/lit8 v0, v0, 0x1

    move v2, v0

    .line 1105
    .end local v0           #extraBytes:I
    .local v2, extraBytes:I
    :goto_2
    add-int v7, v1, v2

    .line 1107
    .end local v1           #resultLen:I
    .local v7, resultLen:I
    new-array v6, v7, [B

    .line 1109
    .local v6, result:[B
    const/4 v0, 0x0

    .line 1110
    .local v0, digitCount:I
    const/4 v1, 0x0

    .local v1, i:I
    move v4, v1

    .end local v1           #i:I
    .local v4, i:I
    move v1, v0

    .end local v0           #digitCount:I
    .local v1, digitCount:I
    :goto_3
    if-ge v4, v5, :cond_5

    .line 1111
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1112
    .local v0, c:C
    const/16 v8, 0x2b

    if-ne v0, v8, :cond_3

    move v0, v1

    .line 1110
    .end local v1           #digitCount:I
    .local v0, digitCount:I
    :goto_4
    add-int/lit8 v1, v4, 0x1

    .end local v4           #i:I
    .local v1, i:I
    move v4, v1

    .end local v1           #i:I
    .restart local v4       #i:I
    move v1, v0

    .end local v0           #digitCount:I
    .local v1, digitCount:I
    goto :goto_3

    .line 1113
    .local v0, c:C
    :cond_3
    and-int/lit8 v8, v1, 0x1

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    const/4 v8, 0x4

    .line 1114
    .local v8, shift:I
    :goto_5
    shr-int/lit8 v9, v1, 0x1

    add-int/2addr v9, v2

    aget-byte v10, v6, v9

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->charToBCD(C)I

    move-result v0

    .end local v0           #c:C
    and-int/lit8 v0, v0, 0xf

    shl-int/2addr v0, v8

    int-to-byte v0, v0

    or-int/2addr v0, v10

    int-to-byte v0, v0

    aput-byte v0, v6, v9

    .line 1115
    add-int/lit8 v0, v1, 0x1

    .end local v1           #digitCount:I
    .local v0, digitCount:I
    goto :goto_4

    .line 1113
    .end local v8           #shift:I
    .local v0, c:C
    .restart local v1       #digitCount:I
    :cond_4
    const/4 v8, 0x0

    goto :goto_5

    .line 1119
    .end local v0           #c:C
    :cond_5
    and-int/lit8 p0, v1, 0x1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    .end local p0
    shr-int/lit8 p0, v1, 0x1

    add-int/2addr p0, v2

    aget-byte v0, v6, p0

    or-int/lit16 v0, v0, 0xf0

    int-to-byte v0, v0

    aput-byte v0, v6, p0

    .line 1121
    :cond_6
    const/4 p0, 0x0

    .line 1122
    .local p0, offset:I
    if-eqz p1, :cond_7

    add-int/lit8 p1, p0, 0x1

    .end local p0           #offset:I
    .local p1, offset:I
    const/4 v0, 0x1

    sub-int v0, v7, v0

    int-to-byte v0, v0

    aput-byte v0, v6, p0

    move p0, p1

    .line 1123
    .end local p1           #offset:I
    .restart local p0       #offset:I
    :cond_7
    if-eqz v3, :cond_8

    const/16 p1, 0x91

    :goto_6
    int-to-byte p1, p1

    aput-byte p1, v6, p0

    move-object p0, v6

    .line 1125
    goto :goto_1

    .line 1123
    :cond_8
    const/16 p1, 0x81

    goto :goto_6

    .end local v2           #extraBytes:I
    .end local v4           #i:I
    .end local v6           #result:[B
    .end local v7           #resultLen:I
    .local v0, extraBytes:I
    .local v1, resultLen:I
    .local p0, number:Ljava/lang/String;
    .local p1, includeLength:Z
    :cond_9
    move v2, v0

    .end local v0           #extraBytes:I
    .restart local v2       #extraBytes:I
    goto :goto_2
.end method

.method private static processPlusCodeWithinNanp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "networkDialStr"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2450
    move-object v1, p1

    .line 2456
    .local v1, retStr:Ljava/lang/String;
    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2457
    .local v0, newStr:Ljava/lang/String;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2458
    .local v2, sp:Landroid/content/SharedPreferences;
    const-string v4, "country_code"

    const-string v5, "011"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2460
    .local v3, value:Ljava/lang/String;
    if-eqz p1, :cond_1

    move v4, v7

    :goto_0
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2b

    if-ne v5, v6, :cond_2

    move v5, v7

    :goto_1
    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_0

    .line 2464
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isOneNanp(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isDefaultPlusCode(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2466
    move-object v1, v0

    .line 2474
    :cond_0
    :goto_2
    return-object v1

    :cond_1
    move v4, v8

    .line 2460
    goto :goto_0

    :cond_2
    move v5, v8

    goto :goto_1

    .line 2470
    :cond_3
    const-string v4, "[+]"

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method private static processPlusCodeWithinNanp(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "networkDialStr"

    .prologue
    const/4 v5, 0x1

    .line 1939
    move-object v2, p0

    .line 1944
    .local v2, retStr:Ljava/lang/String;
    if-eqz p0, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2b

    if-ne v3, v4, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_0

    .line 1947
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1948
    .local v1, newStr:Ljava/lang/String;
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isOneNanp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1950
    move-object v2, v1

    .line 1958
    .end local v1           #newStr:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 1952
    .restart local v1       #newStr:Ljava/lang/String;
    :cond_1
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultIdp()Ljava/lang/String;

    move-result-object v0

    .line 1954
    .local v0, idpStr:Ljava/lang/String;
    const-string v3, "[+]"

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static setEmergencyTestNum(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 1595
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "emergency_test_num"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/telephony/PhoneNumberUtils;->mEmergencyTestEnable:I

    .line 1598
    return-void
.end method

.method public static stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "s"
    .parameter "TOA"

    .prologue
    .line 782
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 788
    :goto_0
    return-object v0

    .line 784
    :cond_0
    const/16 v0, 0x91

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_1

    .line 785
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p0

    .line 788
    goto :goto_0
.end method

.method public static stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "phoneNumber"

    .prologue
    .line 280
    if-nez p0, :cond_0

    .line 281
    const/4 v4, 0x0

    .line 293
    :goto_0
    return-object v4

    .line 283
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 284
    .local v2, len:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 286
    .local v3, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 287
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 288
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 289
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 286
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 293
    .end local v0           #c:C
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "phoneNumber"

    .prologue
    .line 715
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 716
    .local v0, np:Ljava/lang/String;
    const/4 v1, 0x7

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static toCallerIDMinMatch(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "phoneNumber"
    .parameter "minMatch"

    .prologue
    .line 732
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 733
    .local v0, np:Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/telephony/PhoneNumberUtils;->internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static toaFromString(Ljava/lang/String;)I
    .locals 2
    .parameter "s"

    .prologue
    .line 798
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_0

    .line 799
    const/16 v0, 0x91

    .line 802
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x81

    goto :goto_0
.end method

.method private static tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    .locals 11
    .parameter "str"
    .parameter "acceptThailandCase"

    .prologue
    const/16 v10, 0x36

    const/16 v9, 0x30

    const/16 v8, 0x31

    const/4 v7, 0x0

    .line 2177
    const/4 v5, 0x0

    .line 2178
    .local v5, state:I
    const/4 v0, 0x0

    .line 2179
    .local v0, ccc:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 2180
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_f

    .line 2181
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2182
    .local v1, ch:C
    packed-switch v5, :pswitch_data_0

    move-object v6, v7

    .line 2251
    .end local v1           #ch:C
    :goto_1
    return-object v6

    .line 2184
    .restart local v1       #ch:C
    :pswitch_0
    const/16 v6, 0x2b

    if-ne v1, v6, :cond_1

    const/4 v5, 0x1

    .line 2180
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2185
    :cond_1
    if-ne v1, v9, :cond_2

    const/4 v5, 0x2

    goto :goto_2

    .line 2186
    :cond_2
    if-ne v1, v8, :cond_4

    .line 2187
    if-eqz p1, :cond_3

    .line 2188
    const/16 v5, 0x8

    goto :goto_2

    :cond_3
    move-object v6, v7

    .line 2190
    goto :goto_1

    .line 2192
    :cond_4
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v7

    .line 2193
    goto :goto_1

    .line 2198
    :pswitch_1
    if-ne v1, v9, :cond_5

    const/4 v5, 0x3

    goto :goto_2

    .line 2199
    :cond_5
    if-ne v1, v8, :cond_6

    const/4 v5, 0x4

    goto :goto_2

    .line 2200
    :cond_6
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v7

    .line 2201
    goto :goto_1

    .line 2206
    :pswitch_2
    if-ne v1, v8, :cond_7

    const/4 v5, 0x5

    goto :goto_2

    .line 2207
    :cond_7
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v7

    .line 2208
    goto :goto_1

    .line 2218
    :pswitch_3
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v4

    .line 2219
    .local v4, ret:I
    if-lez v4, :cond_c

    .line 2220
    mul-int/lit8 v6, v0, 0xa

    add-int v0, v6, v4

    .line 2221
    const/16 v6, 0x64

    if-ge v0, v6, :cond_8

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isCountryCallingCode(I)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 2222
    :cond_8
    new-instance v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    add-int/lit8 v7, v2, 0x1

    invoke-direct {v6, v0, v7}, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;-><init>(II)V

    goto :goto_1

    .line 2224
    :cond_9
    const/4 v6, 0x1

    if-eq v5, v6, :cond_a

    const/4 v6, 0x3

    if-eq v5, v6, :cond_a

    const/4 v6, 0x5

    if-ne v5, v6, :cond_b

    .line 2225
    :cond_a
    const/4 v5, 0x6

    goto :goto_2

    .line 2227
    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 2229
    :cond_c
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v7

    .line 2230
    goto :goto_1

    .line 2235
    .end local v4           #ret:I
    :pswitch_4
    if-ne v1, v10, :cond_d

    const/16 v5, 0x9

    goto :goto_2

    .line 2236
    :cond_d
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v7

    .line 2237
    goto :goto_1

    .line 2241
    :pswitch_5
    if-ne v1, v10, :cond_e

    .line 2242
    new-instance v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    const/16 v7, 0x42

    add-int/lit8 v8, v2, 0x1

    invoke-direct {v6, v7, v8}, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;-><init>(II)V

    goto/16 :goto_1

    :cond_e
    move-object v6, v7

    .line 2244
    goto/16 :goto_1

    .end local v1           #ch:C
    :cond_f
    move-object v6, v7

    .line 2251
    goto/16 :goto_1

    .line 2182
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static tryGetISODigit(C)I
    .locals 2
    .parameter "ch"

    .prologue
    const/16 v1, 0x30

    .line 2148
    if-gt v1, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 2149
    sub-int v0, p0, v1

    .line 2151
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I
    .locals 5
    .parameter "str"
    .parameter "currentIndex"

    .prologue
    const/4 v4, -0x1

    .line 2264
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 2265
    .local v2, length:I
    move v1, p1

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 2266
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2267
    .local v0, ch:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v3

    if-ltz v3, :cond_0

    .line 2268
    add-int/lit8 v3, v1, 0x1

    .line 2273
    .end local v0           #ch:C
    :goto_1
    return v3

    .line 2269
    .restart local v0       #ch:C
    :cond_0
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    .line 2270
    goto :goto_1

    .line 2265
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #ch:C
    :cond_2
    move v3, v4

    .line 2273
    goto :goto_1
.end method
