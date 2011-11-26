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

    .line 94
    const-string v0, "[\\+]?[0-9.-]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->GLOBAL_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    .line 1280
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

    .line 1694
    const/4 v0, 0x0

    sput v0, Landroid/telephony/PhoneNumberUtils;->mEmergencyTestEnable:I

    .line 1783
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    .line 1785
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x61

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x62

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x63

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1786
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x41

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x42

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x43

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1788
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x66

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1789
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x44

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x45

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x46

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1791
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x67

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x68

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x69

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 1792
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x47

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x48

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x49

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 1794
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

    .line 1795
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

    .line 1797
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

    .line 1798
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

    .line 1800
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

    .line 1801
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

    .line 1803
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

    .line 1804
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

    .line 1806
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

    .line 1807
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

    .line 2237
    const/16 v0, 0x64

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->COUNTLY_CALLING_CALL:[Z

    .line 2249
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->COUNTLY_CALLING_CALL:[Z

    array-length v0, v0

    sput v0, Landroid/telephony/PhoneNumberUtils;->CCC_LENGTH:I

    return-void

    .line 2237
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
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2272
    return-void
.end method

.method public static DocomoNetworkPortionToCalledPartyBCD(Ljava/lang/String;)[B
    .locals 2
    .parameter "s"

    .prologue
    .line 1157
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1158
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
    .line 1228
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    .line 1229
    .local v7, numberLenReal:I
    move v0, v7

    .line 1230
    .local v0, numberLenEffective:I
    const/16 v1, 0x2b

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    move v3, v1

    .line 1231
    .local v3, hasPlus:Z
    :goto_0
    const/16 v1, 0x23

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    const/4 v1, 0x1

    move v4, v1

    .line 1232
    .local v4, hasSharp:Z
    :goto_1
    const/16 v1, 0x2a

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    const/4 v1, 0x1

    move v5, v1

    .line 1234
    .local v5, hasStar:Z
    :goto_2
    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 1236
    :cond_0
    if-nez v0, :cond_4

    const/4 p0, 0x0

    .line 1265
    .end local v0           #numberLenEffective:I
    .end local p0
    .end local p1
    :goto_3
    return-object p0

    .line 1230
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

    .line 1231
    .restart local v3       #hasPlus:Z
    :cond_2
    const/4 v1, 0x0

    move v4, v1

    goto :goto_1

    .line 1232
    .restart local v4       #hasSharp:Z
    :cond_3
    const/4 v1, 0x0

    move v5, v1

    goto :goto_2

    .line 1238
    .restart local v5       #hasStar:Z
    :cond_4
    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v1, v0, 0x2

    .line 1239
    .end local v0           #numberLenEffective:I
    .local v1, resultLen:I
    const/4 v0, 0x1

    .line 1240
    .local v0, extraBytes:I
    if-eqz p1, :cond_d

    add-int/lit8 v0, v0, 0x1

    move v2, v0

    .line 1241
    .end local v0           #extraBytes:I
    .local v2, extraBytes:I
    :goto_4
    add-int v9, v1, v2

    .line 1243
    .end local v1           #resultLen:I
    .local v9, resultLen:I
    new-array v8, v9, [B

    .line 1245
    .local v8, result:[B
    const/4 v0, 0x0

    .line 1246
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

    .line 1247
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1248
    .local v0, c:C
    const/16 v10, 0x2b

    if-ne v0, v10, :cond_5

    move v0, v1

    .line 1246
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

    .line 1249
    .local v0, c:C
    :cond_5
    and-int/lit8 v10, v1, 0x1

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    const/4 v10, 0x4

    .line 1250
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

    .line 1251
    add-int/lit8 v0, v1, 0x1

    .end local v1           #digitCount:I
    .local v0, digitCount:I
    goto :goto_6

    .line 1249
    .end local v10           #shift:I
    .local v0, c:C
    .restart local v1       #digitCount:I
    :cond_6
    const/4 v10, 0x0

    goto :goto_7

    .line 1255
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

    .line 1257
    :cond_8
    const/4 p0, 0x0

    .line 1258
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

    .line 1259
    .end local p1           #offset:I
    .restart local p0       #offset:I
    :cond_9
    if-eqz v3, :cond_c

    const/16 p1, 0x91

    :goto_8
    int-to-byte p1, p1

    aput-byte p1, v8, p0

    .line 1261
    if-nez v4, :cond_a

    if-eqz v5, :cond_b

    .line 1262
    :cond_a
    aget-byte p1, v8, p0

    and-int/lit16 p1, p1, 0xf0

    int-to-byte p1, p1

    aput-byte p1, v8, p0

    :cond_b
    move-object p0, v8

    .line 1265
    goto :goto_3

    .line 1259
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

    .line 2097
    const/4 v3, 0x1

    if-ne p0, v3, :cond_0

    .line 2098
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2099
    .local v1, ret:Ljava/lang/StringBuilder;
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2100
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2107
    .end local v1           #ret:Ljava/lang/StringBuilder;
    .local v2, retStr:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 2104
    .end local v2           #retStr:Ljava/lang/String;
    :cond_0
    invoke-virtual {p2, v4, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2105
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
    .line 1072
    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    .line 1073
    add-int/lit8 v0, p0, 0x30

    int-to-char v0, v0

    .line 1080
    :goto_0
    return v0

    .line 1074
    :cond_0
    packed-switch p0, :pswitch_data_0

    .line 1080
    const/4 v0, 0x0

    goto :goto_0

    .line 1075
    :pswitch_0
    const/16 v0, 0x2a

    goto :goto_0

    .line 1076
    :pswitch_1
    const/16 v0, 0x23

    goto :goto_0

    .line 1077
    :pswitch_2
    const/16 v0, 0x2c

    goto :goto_0

    .line 1078
    :pswitch_3
    const/16 v0, 0x4e

    goto :goto_0

    .line 1074
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
    .line 1062
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p2, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1064
    .local v0, ret:Ljava/lang/StringBuilder;
    invoke-static {v0, p0, p1, p2}, Landroid/telephony/PhoneNumberUtils;->internalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BII)V

    .line 1066
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

    .line 919
    const/4 v2, 0x0

    .line 920
    .local v2, prependPlus:Z
    new-instance v3, Ljava/lang/StringBuilder;

    mul-int/lit8 v5, p2, 0x2

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 922
    .local v3, ret:Ljava/lang/StringBuilder;
    if-ge p2, v8, :cond_0

    .line 923
    const-string v5, ""

    move-object v5, v11

    .line 1014
    :goto_0
    return-object v5

    .line 927
    :cond_0
    aget-byte v5, p0, p1

    and-int/lit16 v5, v5, 0xf0

    const/16 v6, 0x90

    if-ne v5, v6, :cond_1

    .line 928
    const/4 v2, 0x1

    .line 931
    :cond_1
    add-int/lit8 v5, p1, 0x1

    sub-int v6, p2, v7

    invoke-static {v3, p0, v5, v6}, Landroid/telephony/PhoneNumberUtils;->internalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BII)V

    .line 934
    if-eqz v2, :cond_2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 936
    const-string v5, ""

    move-object v5, v11

    goto :goto_0

    .line 939
    :cond_2
    if-eqz v2, :cond_3

    .line 965
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 966
    .local v4, retString:Ljava/lang/String;
    const-string v5, "(^[#*])(.*)([#*])(.*)(#)$"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 967
    .local v1, p:Ljava/util/regex/Pattern;
    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 968
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 969
    const-string v5, ""

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 973
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #ret:Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 974
    .restart local v3       #ret:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 975
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 976
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 977
    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 978
    const-string v5, "+"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1014
    .end local v0           #m:Ljava/util/regex/Matcher;
    .end local v1           #p:Ljava/util/regex/Pattern;
    .end local v4           #retString:Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 983
    .restart local v0       #m:Ljava/util/regex/Matcher;
    .restart local v1       #p:Ljava/util/regex/Pattern;
    .restart local v4       #retString:Ljava/lang/String;
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #ret:Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 984
    .restart local v3       #ret:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 985
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 986
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 987
    const-string v5, "+"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 988
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 989
    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 992
    :cond_5
    const-string v5, "(^[#*])(.*)([#*])(.*)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 993
    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 994
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 999
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #ret:Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1000
    .restart local v3       #ret:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1001
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1002
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1003
    const-string v5, "+"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1004
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1007
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #ret:Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1008
    .restart local v3       #ret:Ljava/lang/StringBuilder;
    const/16 v5, 0x2b

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1009
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static cdmaCheckAndProcessPlusCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "dialStr"

    .prologue
    const-string v4, ""

    .line 1845
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1846
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1848
    const-string v2, "gsm.operator.iso-country"

    const-string v3, ""

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1849
    .local v0, currIso:Ljava/lang/String;
    const-string v2, "gsm.sim.operator.iso-country"

    const-string v3, ""

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1850
    .local v1, defaultIso:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1851
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v3

    invoke-static {p0, v2, v3}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    .line 1857
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

    .line 1889
    move-object v3, p0

    .line 1892
    .local v3, retStr:Ljava/lang/String;
    if-eqz p0, :cond_2

    const-string v5, "+"

    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 1896
    if-ne p1, p2, :cond_7

    if-ne p1, v7, :cond_7

    .line 1898
    const/4 v2, 0x0

    .line 1899
    .local v2, postDialStr:Ljava/lang/String;
    move-object v4, p0

    .line 1902
    .local v4, tempDialStr:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1909
    :cond_0
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1911
    .local v1, networkDialStr:Ljava/lang/String;
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->processPlusCodeWithinNanp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1914
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1915
    if-nez v3, :cond_3

    .line 1916
    move-object v3, v1

    .line 1927
    :goto_0
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1928
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1929
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->findDialableIndexFromPostDialStr(Ljava/lang/String;)I

    move-result v0

    .line 1932
    .local v0, dialableIndex:I
    if-lt v0, v7, :cond_5

    .line 1933
    invoke-static {v0, v3, v2}, Landroid/telephony/PhoneNumberUtils;->appendPwCharBackToOrigDialStr(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1936
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1948
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

    .line 1956
    :goto_3
    return-object v5

    .line 1918
    .restart local v1       #networkDialStr:Ljava/lang/String;
    .restart local v2       #postDialStr:Ljava/lang/String;
    .restart local v4       #tempDialStr:Ljava/lang/String;
    :cond_3
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1924
    :cond_4
    const-string v5, "checkAndProcessPlusCode: null newDialStr"

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, p0

    .line 1925
    goto :goto_3

    .line 1941
    .restart local v0       #dialableIndex:I
    :cond_5
    if-gez v0, :cond_6

    .line 1942
    const-string v2, ""

    .line 1944
    :cond_6
    const-string/jumbo v5, "wrong postDialStr="

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1953
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

    .line 1086
    if-lt p0, v1, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 1087
    sub-int v0, p0, v1

    .line 1095
    :goto_0
    return v0

    .line 1088
    :cond_0
    const/16 v0, 0x2a

    if-ne p0, v0, :cond_1

    .line 1089
    const/16 v0, 0xa

    goto :goto_0

    .line 1090
    :cond_1
    const/16 v0, 0x23

    if-ne p0, v0, :cond_2

    .line 1091
    const/16 v0, 0xb

    goto :goto_0

    .line 1092
    :cond_2
    const/16 v0, 0x2c

    if-ne p0, v0, :cond_3

    .line 1093
    const/16 v0, 0xc

    goto :goto_0

    .line 1094
    :cond_3
    const/16 v0, 0x4e

    if-ne p0, v0, :cond_4

    .line 1095
    const/16 v0, 0xd

    goto :goto_0

    .line 1097
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

    .line 1707
    sget v0, Landroid/telephony/PhoneNumberUtils;->mEmergencyTestEnable:I

    if-nez v0, :cond_0

    move v0, v1

    .line 1717
    :goto_0
    return v0

    .line 1710
    :cond_0
    const-string v0, "922"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1714
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1717
    goto :goto_0
.end method

.method private static checkPrefixIsIgnorable(Ljava/lang/String;II)Z
    .locals 3
    .parameter "str"
    .parameter "forwardIndex"
    .parameter "backwardIndex"

    .prologue
    const/4 v2, 0x0

    .line 2400
    const/4 v0, 0x0

    .line 2401
    .local v0, trunk_prefix_was_read:Z
    :goto_0
    if-lt p2, p1, :cond_3

    .line 2402
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v1

    if-ltz v1, :cond_2

    .line 2403
    if-eqz v0, :cond_0

    move v1, v2

    .line 2418
    :goto_1
    return v1

    .line 2409
    :cond_0
    const/4 v0, 0x1

    .line 2415
    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 2411
    :cond_2
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    .line 2413
    goto :goto_1

    .line 2418
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
    .line 422
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10d0011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 424
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
    .line 413
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
    .line 431
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
    .line 452
    const/4 v3, 0x0

    .line 453
    .local v3, numNonDialableCharsInA:I
    const/4 v4, 0x0

    .line 455
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

    .line 539
    .end local v3           #numNonDialableCharsInA:I
    .local p0, numNonDialableCharsInA:I
    :goto_1
    return v0

    .line 455
    .restart local v3       #numNonDialableCharsInA:I
    .restart local v4       #numNonDialableCharsInB:I
    .local p0, a:Ljava/lang/String;
    .local p1, b:Ljava/lang/String;
    :cond_1
    const/4 p0, 0x0

    goto :goto_0

    .line 457
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 458
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

    .line 461
    .restart local v3       #numNonDialableCharsInA:I
    .restart local v4       #numNonDialableCharsInB:I
    .local p0, a:Ljava/lang/String;
    .local p1, b:Ljava/lang/String;
    :cond_4
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v0

    .line 462
    .local v0, ia:I
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v1

    .line 463
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

    .line 465
    .end local v0           #ia:I
    .local v1, ia:I
    :goto_2
    if-ltz v1, :cond_10

    if-ltz v3, :cond_10

    .line 467
    const/4 v5, 0x0

    .line 469
    .local v5, skipCmp:Z
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 471
    .local v0, ca:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-nez v7, :cond_f

    .line 472
    add-int/lit8 v1, v1, -0x1

    .line 473
    const/4 v5, 0x1

    .line 474
    add-int/lit8 v2, v2, 0x1

    move v7, v5

    .end local v5           #skipCmp:Z
    .local v7, skipCmp:Z
    move v5, v2

    .end local v2           #numNonDialableCharsInA:I
    .local v5, numNonDialableCharsInA:I
    move v2, v1

    .line 477
    .end local v1           #ia:I
    .local v2, ia:I
    :goto_3
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 479
    .local v1, cb:C
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v8

    if-nez v8, :cond_5

    .line 480
    add-int/lit8 v3, v3, -0x1

    .line 481
    const/4 v7, 0x1

    .line 482
    add-int/lit8 v6, v6, 0x1

    .line 485
    :cond_5
    if-nez v7, :cond_e

    .line 486
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

    .line 493
    .end local v5           #numNonDialableCharsInA:I
    .local v2, numNonDialableCharsInA:I
    :goto_4
    const/4 v5, 0x7

    if-ge v4, v5, :cond_8

    .line 494
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    .end local p0           #a:Ljava/lang/String;
    sub-int/2addr p0, v2

    .line 495
    .local p0, effectiveALen:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    .end local p1           #b:Ljava/lang/String;
    sub-int/2addr p1, v3

    .line 500
    .local p1, effectiveBLen:I
    if-ne p0, p1, :cond_7

    if-ne p0, v4, :cond_7

    .line 501
    const/4 p0, 0x1

    move p1, v3

    .end local v3           #numNonDialableCharsInB:I
    .local p1, numNonDialableCharsInB:I
    move v0, p0

    move p0, v2

    .end local v2           #numNonDialableCharsInA:I
    .local p0, numNonDialableCharsInA:I
    goto :goto_1

    .line 489
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

    .line 491
    .end local v0           #ia:I
    .local v1, ia:I
    goto :goto_2

    .line 504
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

    .line 508
    .restart local v2       #numNonDialableCharsInA:I
    .restart local v3       #numNonDialableCharsInB:I
    .local p0, a:Ljava/lang/String;
    .local p1, b:Ljava/lang/String;
    :cond_8
    const/4 v5, 0x7

    if-lt v4, v5, :cond_a

    if-ltz v0, :cond_9

    if-gez v1, :cond_a

    .line 509
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

    .line 521
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

    .line 524
    const/4 p0, 0x1

    move p1, v3

    .end local v3           #numNonDialableCharsInB:I
    .local p1, numNonDialableCharsInB:I
    move v0, p0

    move p0, v2

    .end local v2           #numNonDialableCharsInA:I
    .local p0, numNonDialableCharsInA:I
    goto/16 :goto_1

    .line 527
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

    .line 530
    const/4 p0, 0x1

    move p1, v3

    .end local v3           #numNonDialableCharsInB:I
    .local p1, numNonDialableCharsInB:I
    move v0, p0

    move p0, v2

    .end local v2           #numNonDialableCharsInA:I
    .local p0, numNonDialableCharsInA:I
    goto/16 :goto_1

    .line 533
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

    .line 536
    const/4 p0, 0x1

    move p1, v3

    .end local v3           #numNonDialableCharsInB:I
    .local p1, numNonDialableCharsInB:I
    move v0, p0

    move p0, v2

    .end local v2           #numNonDialableCharsInA:I
    .local p0, numNonDialableCharsInA:I
    goto/16 :goto_1

    .line 539
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

.method public static compareLooselyOld(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .parameter "a"
    .parameter "b"

    .prologue
    const/16 v11, 0x4e

    const/4 v10, 0x7

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 563
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    if-ne p0, p1, :cond_1

    move v7, v8

    .line 642
    :goto_0
    return v7

    :cond_1
    move v7, v9

    .line 563
    goto :goto_0

    .line 565
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_4

    :cond_3
    move v7, v9

    .line 566
    goto :goto_0

    .line 569
    :cond_4
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v3

    .line 570
    .local v3, ia:I
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v4

    .line 571
    .local v4, ib:I
    const/4 v5, 0x0

    .line 573
    .local v5, matched:I
    :cond_5
    :goto_1
    if-ltz v3, :cond_8

    if-ltz v4, :cond_8

    .line 575
    const/4 v6, 0x0

    .line 577
    .local v6, skipCmp:Z
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 579
    .local v1, ca:C
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-nez v7, :cond_6

    .line 580
    add-int/lit8 v3, v3, -0x1

    .line 581
    const/4 v6, 0x1

    .line 584
    :cond_6
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 586
    .local v2, cb:C
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-nez v7, :cond_7

    .line 587
    add-int/lit8 v4, v4, -0x1

    .line 588
    const/4 v6, 0x1

    .line 591
    :cond_7
    if-nez v6, :cond_5

    .line 592
    if-eq v2, v1, :cond_9

    if-eq v1, v11, :cond_9

    if-eq v2, v11, :cond_9

    .line 599
    .end local v1           #ca:C
    .end local v2           #cb:C
    .end local v6           #skipCmp:Z
    :cond_8
    if-ge v5, v10, :cond_b

    .line 600
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 604
    .local v0, aLen:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v0, v7, :cond_a

    if-ne v0, v5, :cond_a

    move v7, v8

    .line 605
    goto :goto_0

    .line 595
    .end local v0           #aLen:I
    .restart local v1       #ca:C
    .restart local v2       #cb:C
    .restart local v6       #skipCmp:Z
    :cond_9
    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v1           #ca:C
    .end local v2           #cb:C
    .end local v6           #skipCmp:Z
    .restart local v0       #aLen:I
    :cond_a
    move v7, v9

    .line 607
    goto :goto_0

    .line 611
    .end local v0           #aLen:I
    :cond_b
    if-lt v5, v10, :cond_d

    if-ltz v3, :cond_c

    if-gez v4, :cond_d

    :cond_c
    move v7, v8

    .line 612
    goto :goto_0

    .line 624
    :cond_d
    add-int/lit8 v7, v3, 0x1

    invoke-static {p0, v7}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefix(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_e

    add-int/lit8 v7, v4, 0x1

    invoke-static {p1, v7}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefix(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_e

    move v7, v8

    .line 627
    goto :goto_0

    .line 630
    :cond_e
    add-int/lit8 v7, v3, 0x1

    invoke-static {p0, v7}, Landroid/telephony/PhoneNumberUtils;->matchTrunkPrefix(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_f

    add-int/lit8 v7, v4, 0x1

    invoke-static {p1, v7}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefixAndCC(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_f

    move v7, v8

    .line 633
    goto/16 :goto_0

    .line 636
    :cond_f
    add-int/lit8 v7, v4, 0x1

    invoke-static {p1, v7}, Landroid/telephony/PhoneNumberUtils;->matchTrunkPrefix(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_10

    add-int/lit8 v7, v3, 0x1

    invoke-static {p0, v7}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefixAndCC(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_10

    move v7, v8

    .line 639
    goto/16 :goto_0

    :cond_10
    move v7, v9

    .line 642
    goto/16 :goto_0
.end method

.method public static compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 650
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
    .line 658
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 659
    :cond_0
    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    .line 796
    .end local p0
    .end local p1
    .end local p2
    :goto_0
    return p0

    .line 659
    .restart local p0
    .restart local p1
    .restart local p2
    :cond_1
    const/4 p0, 0x0

    goto :goto_0

    .line 660
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 661
    const/4 p0, 0x0

    goto :goto_0

    .line 664
    :cond_3
    const/4 v3, 0x0

    .line 665
    .local v3, forwardIndexA:I
    const/4 v4, 0x0

    .line 667
    .local v4, forwardIndexB:I
    invoke-static {p0, p2}, Landroid/telephony/PhoneNumberUtils;->tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    move-result-object v1

    .line 669
    .local v1, cccA:Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    invoke-static {p1, p2}, Landroid/telephony/PhoneNumberUtils;->tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    move-result-object v2

    .line 671
    .local v2, cccB:Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    const/4 v0, 0x0

    .line 672
    .local v0, bothHasCountryCallingCode:Z
    const/4 v5, 0x1

    .line 673
    .local v5, okToIgnorePrefix:Z
    const/4 v6, 0x0

    .line 674
    .local v6, trunkPrefixIsOmittedA:Z
    const/4 v7, 0x0

    .line 675
    .local v7, trunkPrefixIsOmittedB:Z
    if-eqz v1, :cond_8

    if-eqz v2, :cond_8

    .line 676
    iget v0, v1, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->countryCallingCode:I

    .end local v0           #bothHasCountryCallingCode:Z
    iget v3, v2, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->countryCallingCode:I

    .end local v3           #forwardIndexA:I
    if-eq v0, v3, :cond_4

    .line 678
    const/4 p0, 0x0

    goto :goto_0

    .line 682
    :cond_4
    const/4 v3, 0x0

    .line 683
    .end local v5           #okToIgnorePrefix:Z
    .local v3, okToIgnorePrefix:Z
    const/4 v0, 0x1

    .line 684
    .restart local v0       #bothHasCountryCallingCode:Z
    iget v1, v1, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    .line 685
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

    .line 711
    .end local v0           #bothHasCountryCallingCode:Z
    .local v2, bothHasCountryCallingCode:Z
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 712
    .local v0, backwardIndexA:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    .line 713
    .local v1, backwardIndexB:I
    :cond_5
    :goto_2
    if-lt v0, v5, :cond_d

    if-lt v1, v6, :cond_d

    .line 714
    const/4 v8, 0x0

    .line 715
    .local v8, skip_compare:Z
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 716
    .local v3, chA:C
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 717
    .local v4, chB:C
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isSeparator(C)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 718
    add-int/lit8 v0, v0, -0x1

    .line 719
    const/4 v8, 0x1

    .line 721
    :cond_6
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isSeparator(C)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 722
    add-int/lit8 v1, v1, -0x1

    .line 723
    const/4 v8, 0x1

    .line 726
    :cond_7
    if-nez v8, :cond_5

    .line 727
    if-eq v3, v4, :cond_c

    .line 728
    const/4 p0, 0x0

    goto :goto_0

    .line 686
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

    .line 689
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

    .line 691
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

    .line 692
    iget v1, v1, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    .end local v3           #forwardIndexA:I
    .local v1, forwardIndexA:I
    move v3, v6

    .line 700
    .end local v6           #trunkPrefixIsOmittedA:Z
    .local v3, trunkPrefixIsOmittedA:Z
    :goto_3
    if-eqz v2, :cond_b

    .line 701
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

    .line 694
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

    .line 695
    .local v1, tmp:I
    if-ltz v1, :cond_1f

    .line 696
    move v1, v1

    .line 697
    .end local v3           #forwardIndexA:I
    .local v1, forwardIndexA:I
    const/4 v3, 0x1

    .end local v6           #trunkPrefixIsOmittedA:Z
    .local v3, trunkPrefixIsOmittedA:Z
    goto :goto_3

    .line 703
    :cond_b
    const/4 v2, 0x0

    invoke-static {p1, v2}, Landroid/telephony/PhoneNumberUtils;->tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I

    .end local v2           #cccB:Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    move-result v2

    .line 704
    .local v2, tmp:I
    if-ltz v2, :cond_1e

    .line 705
    move v2, v2

    .line 706
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

    .line 730
    .local v0, backwardIndexA:I
    .local v1, backwardIndexB:I
    .local v3, chA:C
    .local v4, chB:C
    .restart local v8       #skip_compare:Z
    :cond_c
    add-int/lit8 v0, v0, -0x1

    .line 731
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 735
    .end local v3           #chA:C
    .end local v4           #chB:C
    .end local v8           #skip_compare:Z
    :cond_d
    if-eqz v7, :cond_15

    .line 736
    if-eqz v9, :cond_e

    if-le v5, v0, :cond_f

    :cond_e
    invoke-static {p0, v5, v0}, Landroid/telephony/PhoneNumberUtils;->checkPrefixIsIgnorable(Ljava/lang/String;II)Z

    move-result v2

    .end local v2           #bothHasCountryCallingCode:Z
    if-nez v2, :cond_11

    .line 738
    :cond_f
    if-eqz p2, :cond_10

    .line 748
    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    .end local p2
    move-result p0

    goto/16 :goto_0

    .line 750
    .restart local p2
    :cond_10
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 753
    :cond_11
    if-eqz v10, :cond_12

    if-le v6, v1, :cond_13

    :cond_12
    invoke-static {p1, v5, v1}, Landroid/telephony/PhoneNumberUtils;->checkPrefixIsIgnorable(Ljava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 755
    :cond_13
    if-eqz p2, :cond_14

    .line 756
    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    .end local p2
    move-result p0

    goto/16 :goto_0

    .line 758
    .restart local p2
    :cond_14
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 771
    .restart local v2       #bothHasCountryCallingCode:Z
    :cond_15
    if-nez v2, :cond_16

    const/4 p2, 0x1

    .local p2, maybeNamp:Z
    :goto_4
    move v2, p2

    .local v2, maybeNamp:I
    move p2, v0

    .line 772
    .end local v0           #backwardIndexA:I
    .local p2, backwardIndexA:I
    :goto_5
    if-lt p2, v5, :cond_1c

    .line 773
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 774
    .local v0, chA:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 775
    if-eqz v2, :cond_17

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v0

    .end local v0           #chA:C
    const/4 v2, 0x1

    if-ne v0, v2, :cond_17

    .line 776
    .end local v2           #maybeNamp:I
    const/4 v0, 0x0

    .line 781
    :goto_6
    add-int/lit8 p2, p2, -0x1

    move v2, v0

    .line 782
    .restart local v2       #maybeNamp:I
    goto :goto_5

    .line 771
    .local v0, backwardIndexA:I
    .local v2, bothHasCountryCallingCode:Z
    .local p2, acceptInvalidCCCPrefix:Z
    :cond_16
    const/4 p2, 0x0

    goto :goto_4

    .line 778
    .end local v0           #backwardIndexA:I
    .end local v2           #bothHasCountryCallingCode:Z
    .local p2, backwardIndexA:I
    :cond_17
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 783
    .local v1, maybeNamp:I
    .local p0, backwardIndexB:I
    :goto_7
    if-lt p0, v6, :cond_19

    .line 784
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 785
    .local v0, chB:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 786
    if-eqz v1, :cond_18

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v0

    .end local v0           #chB:C
    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    .line 787
    .end local v1           #maybeNamp:I
    const/4 v0, 0x0

    .line 792
    :goto_8
    add-int/lit8 p0, p0, -0x1

    move v1, v0

    .line 793
    .restart local v1       #maybeNamp:I
    goto :goto_7

    .line 789
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

    .line 796
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
    .line 1760
    if-nez p0, :cond_0

    move-object v4, p0

    .line 1776
    :goto_0
    return-object v4

    .line 1763
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1764
    .local v2, len:I
    if-nez v2, :cond_1

    move-object v4, p0

    .line 1765
    goto :goto_0

    .line 1768
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 1770
    .local v3, out:[C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 1771
    aget-char v0, v3, v1

    .line 1773
    .local v0, c:C
    sget-object v4, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    int-to-char v4, v4

    aput-char v4, v3, v1

    .line 1770
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1776
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
    .line 295
    if-nez p0, :cond_0

    .line 296
    const/4 v4, 0x0

    .line 313
    :goto_0
    return-object v4

    .line 298
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 299
    .local v2, len:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 301
    .local v3, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 302
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 304
    .local v0, c:C
    const/16 v4, 0x2c

    if-ne v0, v4, :cond_2

    .line 305
    const/16 v0, 0x70

    .line 310
    :cond_1
    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 301
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 306
    :cond_2
    const/16 v4, 0x3b

    if-ne v0, v4, :cond_1

    .line 307
    const/16 v0, 0x77

    goto :goto_2

    .line 313
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
    .line 318
    if-nez p0, :cond_0

    .line 319
    const/4 v4, 0x0

    .line 335
    :goto_0
    return-object v4

    .line 321
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 322
    .local v2, len:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 324
    .local v3, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 325
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 327
    .local v0, c:C
    const/16 v4, 0x70

    if-ne v0, v4, :cond_2

    .line 328
    const/16 v0, 0x2c

    .line 332
    :cond_1
    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 324
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 329
    :cond_2
    const/16 v4, 0x77

    if-ne v0, v4, :cond_1

    .line 330
    const/16 v0, 0x3b

    goto :goto_2

    .line 335
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
    .line 210
    if-nez p0, :cond_0

    .line 211
    const/4 v5, 0x0

    .line 228
    :goto_0
    return-object v5

    .line 214
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 215
    .local v3, len:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 216
    .local v4, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 218
    .local v1, firstCharAdded:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_4

    .line 219
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 220
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x2b

    if-ne v0, v5, :cond_1

    if-nez v1, :cond_3

    .line 221
    :cond_1
    const/4 v1, 0x1

    .line 222
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 218
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 223
    :cond_3
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isStartsPostDial(C)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 228
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
    .line 241
    if-nez p0, :cond_0

    .line 242
    const/4 v5, 0x0

    .line 264
    :goto_0
    return-object v5

    .line 245
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 246
    .local v3, len:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 247
    .local v4, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 249
    .local v1, haveSeenPlus:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_5

    .line 250
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 251
    .local v0, c:C
    const/16 v5, 0x2b

    if-ne v0, v5, :cond_3

    .line 252
    if-eqz v1, :cond_2

    .line 249
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 255
    :cond_2
    const/4 v1, 0x1

    .line 257
    :cond_3
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 258
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 259
    :cond_4
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isStartsPostDial(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 264
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
    .line 2503
    if-nez p0, :cond_0

    .line 2504
    const/4 v5, 0x0

    .line 2519
    :goto_0
    return-object v5

    .line 2506
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 2507
    .local v3, len:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2508
    .local v4, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 2510
    .local v1, firstCharAdded:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_4

    .line 2511
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2513
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v5

    if-nez v5, :cond_1

    const/16 v5, 0x3b

    if-eq v0, v5, :cond_1

    const/16 v5, 0x2c

    if-ne v0, v5, :cond_3

    .line 2514
    :cond_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2510
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2515
    :cond_3
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isStartsPostDial(C)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2519
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
    .line 2529
    if-nez p1, :cond_0

    .line 2530
    const/4 v7, 0x0

    .line 2561
    :goto_0
    return-object v7

    .line 2533
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 2534
    .local v4, len:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2535
    .local v5, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 2537
    .local v1, firstCharAdded:Z
    const/4 v2, 0x0

    .line 2539
    .local v2, firstCharPause:Z
    const/4 v6, 0x0

    .line 2541
    .local v6, tempstrng:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v4, :cond_3

    .line 2542
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2544
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2545
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2541
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2546
    :cond_2
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isStartsPostDial(C)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2548
    if-nez v3, :cond_3

    .line 2549
    const/4 v2, 0x1

    .line 2556
    .end local v0           #c:C
    :cond_3
    if-nez v2, :cond_4

    .line 2557
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2558
    invoke-static {p0, v6}, Landroid/telephony/PhoneNumberUtils;->processPlusCodeWithinNanp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    .line 2559
    goto :goto_0

    :cond_4
    move-object v7, p1

    .line 2561
    goto :goto_0
.end method

.method public static extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "phoneNumber"

    .prologue
    .line 388
    if-nez p0, :cond_0

    const/4 v5, 0x0

    .line 404
    :goto_0
    return-object v5

    .line 391
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 393
    .local v2, ret:Ljava/lang/StringBuilder;
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v4

    .line 395
    .local v4, trimIndex:I
    add-int/lit8 v1, v4, 0x1

    .local v1, i:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 396
    .local v3, s:I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 398
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 399
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 400
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 396
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 404
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
    .line 2081
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2082
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2083
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    .line 2087
    .end local v0           #c:C
    :goto_1
    return v2

    .line 2081
    .restart local v0       #c:C
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2087
    .end local v0           #c:C
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public static formatJapaneseNumber(Landroid/text/Editable;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 1523
    invoke-static {p0}, Landroid/telephony/JapanesePhoneNumberFormatter;->format(Landroid/text/Editable;)V

    .line 1524
    return-void
.end method

.method public static formatNanpNumber(Landroid/text/Editable;)V
    .locals 8
    .parameter "text"

    .prologue
    .line 1403
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 1404
    .local v0, length:I
    const-string v1, "+1-nnn-nnn-nnnn"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    move p0, v0

    .line 1505
    .end local v0           #length:I
    .local p0, length:I
    :goto_0
    return-void

    .line 1407
    .restart local v0       #length:I
    .local p0, text:Landroid/text/Editable;
    :cond_0
    const/4 v1, 0x5

    if-gt v0, v1, :cond_1

    move p0, v0

    .line 1409
    .end local v0           #length:I
    .local p0, length:I
    goto :goto_0

    .line 1412
    .restart local v0       #length:I
    .local p0, text:Landroid/text/Editable;
    :cond_1
    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    .line 1415
    .local v6, saved:Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 1416
    .local v0, p:I
    :goto_1
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1417
    invoke-interface {p0, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_2

    .line 1418
    add-int/lit8 v1, v0, 0x1

    invoke-interface {p0, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_1

    .line 1420
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1423
    :cond_3
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v3

    .line 1428
    .local v3, length:I
    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 1429
    .end local v0           #p:I
    .local v1, dashPositions:[I
    const/4 v2, 0x0

    .line 1431
    .local v2, numDashes:I
    const/4 v5, 0x1

    .line 1432
    .local v5, state:I
    const/4 v4, 0x0

    .line 1433
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

    .line 1434
    invoke-interface {p0, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    .line 1435
    .local v0, c:C
    packed-switch v0, :pswitch_data_0

    .line 1479
    :cond_4
    :pswitch_0
    const/4 v0, 0x0

    invoke-interface {p0, v0, v3, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .end local v0           #c:C
    move p0, v3

    .line 1480
    .end local v3           #length:I
    .local p0, length:I
    goto :goto_0

    .line 1437
    .restart local v0       #c:C
    .restart local v3       #length:I
    .local p0, text:Landroid/text/Editable;
    :pswitch_1
    if-eqz v5, :cond_5

    const/4 v0, 0x2

    if-ne v7, v0, :cond_6

    .line 1438
    .end local v0           #c:C
    :cond_5
    const/4 v0, 0x3

    .end local v7           #state:I
    .local v0, state:I
    move v7, v0

    .line 1433
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

    .line 1451
    :cond_6
    :pswitch_2
    const/4 v0, 0x2

    if-ne v7, v0, :cond_7

    .line 1453
    const/4 v0, 0x0

    invoke-interface {p0, v0, v3, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    move p0, v3

    .line 1454
    .end local v3           #length:I
    .local p0, length:I
    goto :goto_0

    .line 1455
    .restart local v3       #length:I
    .local p0, text:Landroid/text/Editable;
    :cond_7
    const/4 v0, 0x3

    if-ne v7, v0, :cond_8

    .line 1457
    add-int/lit8 v0, v4, 0x1

    .end local v4           #numDashes:I
    .local v0, numDashes:I
    aput v2, v1, v4

    .line 1462
    :goto_4
    const/4 v7, 0x1

    .line 1463
    add-int/lit8 v4, v5, 0x1

    .end local v5           #numDigits:I
    .local v4, numDigits:I
    move v5, v4

    .end local v4           #numDigits:I
    .restart local v5       #numDigits:I
    move v4, v0

    .line 1464
    .end local v0           #numDashes:I
    .local v4, numDashes:I
    goto :goto_3

    .line 1458
    :cond_8
    const/4 v0, 0x4

    if-eq v7, v0, :cond_e

    const/4 v0, 0x3

    if-eq v5, v0, :cond_9

    const/4 v0, 0x6

    if-ne v5, v0, :cond_e

    .line 1460
    :cond_9
    add-int/lit8 v0, v4, 0x1

    .end local v4           #numDashes:I
    .restart local v0       #numDashes:I
    aput v2, v1, v4

    goto :goto_4

    .line 1467
    .local v0, c:C
    .restart local v4       #numDashes:I
    :pswitch_3
    const/4 v0, 0x4

    .end local v7           #state:I
    .local v0, state:I
    move v7, v0

    .line 1468
    .end local v0           #state:I
    .restart local v7       #state:I
    goto :goto_3

    .line 1471
    .local v0, c:C
    :pswitch_4
    if-nez v2, :cond_4

    .line 1473
    const/4 v0, 0x2

    .end local v7           #state:I
    .local v0, state:I
    move v7, v0

    .line 1474
    .end local v0           #state:I
    .restart local v7       #state:I
    goto :goto_3

    .line 1484
    :cond_a
    const/4 v0, 0x7

    if-ne v5, v0, :cond_d

    .line 1486
    add-int/lit8 v0, v4, -0x1

    .end local v4           #numDashes:I
    .local v0, numDashes:I
    move v2, v0

    .line 1490
    .end local v0           #numDashes:I
    .local v2, numDashes:I
    :goto_5
    const/4 v0, 0x0

    .end local v5           #numDigits:I
    .end local v6           #saved:Ljava/lang/CharSequence;
    .local v0, i:I
    :goto_6
    if-ge v0, v2, :cond_b

    .line 1491
    aget v4, v1, v0

    .line 1492
    .local v4, pos:I
    add-int v5, v4, v0

    add-int/2addr v4, v0

    const-string v6, "-"

    .end local v4           #pos:I
    invoke-interface {p0, v5, v4, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1490
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1496
    :cond_b
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 1497
    .end local v1           #dashPositions:[I
    .end local v2           #numDashes:I
    .local v0, len:I
    :goto_7
    if-lez v0, :cond_c

    .line 1498
    const/4 v1, 0x1

    sub-int v1, v0, v1

    invoke-interface {p0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_c

    .line 1499
    const/4 v1, 0x1

    sub-int v1, v0, v1

    invoke-interface {p0, v1, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 1500
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    :cond_c
    move p0, v3

    .line 1505
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

    .line 1435
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
    .line 1316
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1317
    .local v0, text:Landroid/text/SpannableStringBuilder;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeForLocale(Ljava/util/Locale;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Landroid/text/Editable;I)V

    .line 1318
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatNumber(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "source"
    .parameter "defaultFormattingType"

    .prologue
    .line 1333
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1334
    .local v0, text:Landroid/text/SpannableStringBuilder;
    invoke-static {v0, p1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Landroid/text/Editable;I)V

    .line 1335
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

    .line 1360
    move v0, p1

    .line 1362
    .local v0, formatType:I
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    if-le v1, v4, :cond_0

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_0

    .line 1363
    invoke-interface {p0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_2

    .line 1364
    const/4 v0, 0x1

    .line 1373
    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1381
    :cond_1
    :goto_1
    return-void

    .line 1365
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

    .line 1367
    const/4 v0, 0x2

    goto :goto_0

    .line 1375
    :pswitch_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->formatNanpNumber(Landroid/text/Editable;)V

    goto :goto_1

    .line 1378
    :pswitch_1
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->formatJapaneseNumber(Landroid/text/Editable;)V

    goto :goto_1

    .line 1373
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getDefaultIdp()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1961
    const/4 v0, 0x0

    .line 1962
    .local v0, ps:Ljava/lang/String;
    const-string/jumbo v1, "ro.cdma.idpstring"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1963
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1964
    const-string v0, "011"

    .line 1966
    :cond_0
    return-object v0
.end method

.method public static getEmergencyServiceCategory(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "number"

    .prologue
    .line 1611
    const/4 v0, 0x0

    .line 1612
    .local v0, clir:I
    const/4 v1, 0x0

    .line 1616
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

    .line 1690
    .end local v10           #isRoaming:I
    .local v0, isRoaming:I
    :goto_0
    return-object v1

    .line 1621
    .local v0, clir:I
    .restart local v1       #isRoaming:I
    .local p0, number:Ljava/lang/String;
    :cond_0
    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1624
    .local v7, words:[Ljava/lang/String;
    array-length p0, v7

    .end local p0           #number:Ljava/lang/String;
    const/4 v2, 0x3

    if-ne p0, v2, :cond_1

    .line 1625
    const/4 p0, 0x0

    aget-object v0, v7, p0

    .line 1626
    .local v0, dialNumber:Ljava/lang/String;
    const/4 p0, 0x1

    aget-object p0, v7, p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 1627
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

    .line 1634
    .end local v10           #clir:I
    .local v0, clir:I
    :goto_1
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1639
    .end local p0           #dialNumber:Ljava/lang/String;
    .local v1, dialNumber:Ljava/lang/String;
    const-string v2, ""

    .line 1641
    .local v2, numbers:Ljava/lang/String;
    const/4 p0, 0x0

    .local p0, i:I
    move-object v4, v2

    .line 1642
    .end local v2           #numbers:Ljava/lang/String;
    .local v4, numbers:Ljava/lang/String;
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ril.ecclist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1643
    .local v2, key:Ljava/lang/String;
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1645
    .local v3, n:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    .line 1657
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    .end local p0           #i:I
    if-nez p0, :cond_d

    .line 1660
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

    .line 1661
    .local v2, emergencyNum:Ljava/lang/String;
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1662
    .local v2, splitStr:[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v2, v3

    .line 1663
    .local v3, eccNum:Ljava/lang/String;
    array-length v8, v2

    const/4 v9, 0x1

    if-le v8, v9, :cond_3

    const/4 v8, 0x1

    aget-object v2, v2, v8

    .line 1664
    .local v2, eccCat:Ljava/lang/String;
    :goto_4
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .end local v3           #eccNum:Ljava/lang/String;
    if-eqz v3, :cond_b

    .line 1667
    array-length p0, v7

    .end local p0           #arr$:[Ljava/lang/String;
    const/4 v3, 0x3

    if-ne p0, v3, :cond_a

    if-nez v5, :cond_a

    .line 1668
    const-string p0, "110"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 1669
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

    .line 1630
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

    .line 1648
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

    .line 1650
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1641
    .end local v4           #numbers:Ljava/lang/String;
    .local v2, numbers:Ljava/lang/String;
    add-int/lit8 p0, p0, 0x1

    move-object v4, v2

    .end local v2           #numbers:Ljava/lang/String;
    .restart local v4       #numbers:Ljava/lang/String;
    goto/16 :goto_2

    .line 1663
    .local v2, splitStr:[Ljava/lang/String;
    .local v3, eccNum:Ljava/lang/String;
    .local v4, i$:I
    .restart local v6       #len$:I
    .local p0, arr$:[Ljava/lang/String;
    :cond_3
    const-string v2, ""

    goto :goto_4

    .line 1669
    .end local v3           #eccNum:Ljava/lang/String;
    .end local p0           #arr$:[Ljava/lang/String;
    .local v2, eccCat:Ljava/lang/String;
    :cond_4
    const/4 p0, 0x0

    goto :goto_5

    .line 1670
    :cond_5
    const-string p0, "118"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 1671
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

    .line 1672
    :cond_7
    const-string p0, "119"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 1673
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

    .line 1675
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

    .line 1679
    .end local v5           #isRoaming:I
    .local v0, isRoaming:I
    goto/16 :goto_0

    .line 1660
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

    .line 1683
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

    .line 1687
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

    .line 1688
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

    .line 1690
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
    .line 1346
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 1348
    .local v0, country:Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private static getFormatTypeFromCountryCode(Ljava/lang/String;)I
    .locals 3
    .parameter "country"

    .prologue
    .line 1979
    sget-object v2, Landroid/telephony/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    array-length v1, v2

    .line 1980
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1981
    sget-object v2, Landroid/telephony/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 1982
    const/4 v2, 0x1

    .line 1988
    :goto_1
    return v2

    .line 1980
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1985
    :cond_1
    const-string v2, "jp"

    invoke-virtual {v2, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 1986
    const/4 v2, 0x2

    goto :goto_1

    .line 1988
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

    .line 150
    const/4 v8, 0x0

    .line 152
    .local v8, number:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 153
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    .line 155
    .local v10, scheme:Ljava/lang/String;
    const-string/jumbo v0, "tel"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "sip"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    :cond_0
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 193
    :goto_0
    return-object v0

    .line 161
    :cond_1
    const-string/jumbo v0, "voicemail"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 162
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCompleteVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 165
    :cond_2
    if-nez p1, :cond_3

    move-object v0, v3

    .line 166
    goto :goto_0

    .line 169
    :cond_3
    invoke-virtual {p0, p1}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 170
    .local v11, type:Ljava/lang/String;
    const/4 v9, 0x0

    .line 173
    .local v9, phoneColumn:Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    .line 174
    .local v6, authority:Ljava/lang/String;
    const-string v0, "contacts"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 175
    const-string/jumbo v9, "number"

    .line 180
    :cond_4
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

    .line 183
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_6

    .line 185
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 186
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 189
    :cond_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object v0, v8

    .line 193
    goto :goto_0

    .line 176
    .end local v7           #c:Landroid/database/Cursor;
    :cond_7
    const-string v0, "com.android.contacts"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 177
    const-string v9, "data1"

    goto :goto_1

    .line 189
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
    .line 840
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 842
    .local v0, np:Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 844
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

    .line 364
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 366
    .local v0, origLength:I
    const/16 v4, 0x2c

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 367
    .local v1, pIndex:I
    const/16 v4, 0x3b

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 369
    .local v3, wIndex:I
    invoke-static {v1, v3}, Landroid/telephony/PhoneNumberUtils;->minPositive(II)I

    move-result v2

    .line 371
    .local v2, trimIndex:I
    if-gez v2, :cond_0

    .line 372
    sub-int v4, v0, v5

    .line 374
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
    .line 1020
    move v2, p2

    .local v2, i:I
    :goto_0
    add-int v3, p3, p2

    if-ge v2, v3, :cond_0

    .line 1024
    aget-byte v3, p1, v2

    and-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->bcdToChar(B)C

    move-result v1

    .line 1026
    .local v1, c:C
    if-nez v1, :cond_1

    .line 1053
    .end local v1           #c:C
    :cond_0
    return-void

    .line 1029
    .restart local v1       #c:C
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1038
    aget-byte v3, p1, v2

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    int-to-byte v0, v3

    .line 1040
    .local v0, b:B
    const/16 v3, 0xf

    if-ne v0, v3, :cond_2

    add-int/lit8 v3, v2, 0x1

    add-int v4, p3, p2

    if-eq v3, v4, :cond_0

    .line 1045
    :cond_2
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->bcdToChar(B)C

    move-result v1

    .line 1046
    if-eqz v1, :cond_0

    .line 1050
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1020
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .parameter "np"
    .parameter "numDigits"

    .prologue
    .line 853
    if-nez p0, :cond_0

    const/4 v5, 0x0

    .line 866
    :goto_0
    return-object v5

    .line 855
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 856
    .local v3, ret:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 858
    .local v2, length:I
    const/4 v5, 0x1

    sub-int v1, v2, v5

    .local v1, i:I
    move v4, v2

    .line 859
    .local v4, s:I
    :goto_1
    if-ltz v1, :cond_1

    sub-int v5, v4, v1

    if-gt v5, p1, :cond_1

    .line 861
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 863
    .local v0, c:C
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 859
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 866
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
    .line 106
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
    .line 2487
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2492
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

    .line 2423
    if-nez p0, :cond_0

    move v3, v4

    .line 2435
    :goto_0
    return v3

    .line 2427
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 2428
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 2429
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2430
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isCheckValidRange(C)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v4

    .line 2431
    goto :goto_0

    .line 2428
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2435
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

    .line 2440
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    move v0, v1

    .line 2450
    :goto_0
    return v0

    .line 2442
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

    .line 2448
    goto :goto_0

    .line 2450
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isCountryCallingCode(I)Z
    .locals 1
    .parameter "countryCallingCodeCandidate"

    .prologue
    .line 2255
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
    .line 2467
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2473
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

    .line 2597
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    move v0, v2

    .line 2605
    :goto_0
    return v0

    .line 2602
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

    .line 2603
    goto :goto_0

    :cond_1
    move v0, v2

    .line 2605
    goto :goto_0
.end method

.method public static final isDialable(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 112
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
    .line 1125
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1126
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1127
    const/4 v2, 0x0

    .line 1130
    :goto_1
    return v2

    .line 1125
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1130
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

    .line 1556
    if-nez p0, :cond_0

    move v5, v6

    .line 1589
    :goto_0
    return v5

    .line 1562
    :cond_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1566
    const-string/jumbo v5, "ril.ecclist"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1567
    .local v4, numbers:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1569
    const-string/jumbo v5, "ro.ril.ecclist"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1574
    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1577
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

    .line 1578
    .local v1, emergencyNum:Ljava/lang/String;
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v7

    .line 1579
    goto :goto_0

    .line 1577
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1           #emergencyNum:Ljava/lang/String;
    :cond_3
    move v5, v6

    .line 1583
    goto :goto_0

    .line 1589
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
    .line 1116
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1117
    const/4 v1, 0x0

    .line 1121
    :goto_0
    return v1

    .line 1120
    :cond_0
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->GLOBAL_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1121
    .local v0, match:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    goto :goto_0
.end method

.method public static isISODigit(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 100
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

    .line 1996
    const/4 v2, 0x0

    .line 1997
    .local v2, retVal:Z
    if-eqz p0, :cond_2

    .line 1998
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 1999
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

    .line 2001
    const/4 v2, 0x1

    .line 2002
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 2003
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2004
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2005
    const/4 v2, 0x0

    .line 2014
    .end local v0           #c:C
    .end local v1           #i:I
    :cond_0
    :goto_1
    return v2

    .line 2002
    .restart local v0       #c:C
    .restart local v1       #i:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2012
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
    .line 124
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
    .line 1134
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1135
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1136
    const/4 v2, 0x0

    .line 1139
    :goto_1
    return v2

    .line 1134
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1139
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private static isOneNanp(Ljava/lang/String;)Z
    .locals 4
    .parameter "dialStr"

    .prologue
    .line 2021
    const/4 v1, 0x0

    .line 2022
    .local v1, retVal:Z
    if-eqz p0, :cond_1

    .line 2023
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2024
    .local v0, newDialStr:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    if-ne v2, v3, :cond_0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNanp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2025
    const/4 v1, 0x1

    .line 2030
    .end local v0           #newDialStr:Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 2028
    :cond_1
    const-string v2, "isOneNanp: null dialStr passed in"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static final isReallyDialable(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 118
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
    .line 138
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
    .line 133
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
    .line 1970
    const/16 v0, 0x32

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 1971
    const/4 v0, 0x1

    .line 1973
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUriNumber(Ljava/lang/String;)Z
    .locals 1
    .parameter "number"

    .prologue
    .line 2046
    if-eqz p0, :cond_1

    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "%40"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

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

.method public static isVoiceMailNumber(Ljava/lang/String;)Z
    .locals 4
    .parameter "number"

    .prologue
    const/4 v3, 0x0

    .line 1735
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1742
    .local v1, vmNumber:Ljava/lang/String;
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1746
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

    .line 1736
    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, ex:Ljava/lang/SecurityException;
    move v2, v3

    .line 1737
    goto :goto_0

    .end local v0           #ex:Ljava/lang/SecurityException;
    .restart local v1       #vmNumber:Ljava/lang/String;
    :cond_0
    move v2, v3

    .line 1746
    goto :goto_0
.end method

.method public static isWellFormedSmsAddress(Ljava/lang/String;)Z
    .locals 2
    .parameter "address"

    .prologue
    .line 1107
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1110
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
    .line 353
    const-string v0, "PhoneNumberUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
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

    .line 2128
    const/4 v2, 0x0

    .line 2129
    .local v2, state:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p1, :cond_6

    .line 2130
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2132
    .local v0, c:C
    packed-switch v2, :pswitch_data_0

    .line 2151
    :pswitch_0
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    .line 2157
    .end local v0           #c:C
    :goto_1
    return v3

    .line 2134
    .restart local v0       #c:C
    :pswitch_1
    const/16 v3, 0x2b

    if-ne v0, v3, :cond_1

    const/4 v2, 0x1

    .line 2129
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2135
    :cond_1
    if-ne v0, v6, :cond_2

    const/4 v2, 0x2

    goto :goto_2

    .line 2136
    :cond_2
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_1

    .line 2140
    :pswitch_2
    if-ne v0, v6, :cond_3

    const/4 v2, 0x3

    goto :goto_2

    .line 2141
    :cond_3
    if-ne v0, v7, :cond_4

    const/4 v2, 0x4

    goto :goto_2

    .line 2142
    :cond_4
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_1

    .line 2146
    :pswitch_3
    if-ne v0, v7, :cond_5

    const/4 v2, 0x5

    goto :goto_2

    .line 2147
    :cond_5
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_1

    .line 2157
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

    .line 2132
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

    .line 2167
    const/4 v2, 0x0

    .line 2168
    .local v2, state:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p1, :cond_8

    .line 2169
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2171
    .local v0, c:C
    packed-switch v2, :pswitch_data_0

    .line 2203
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    .line 2207
    .end local v0           #c:C
    :goto_1
    return v3

    .line 2173
    .restart local v0       #c:C
    :pswitch_0
    const/16 v3, 0x2b

    if-ne v0, v3, :cond_1

    const/4 v2, 0x1

    .line 2168
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2174
    :cond_1
    if-ne v0, v5, :cond_2

    const/4 v2, 0x2

    goto :goto_2

    .line 2175
    :cond_2
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_1

    .line 2179
    :pswitch_1
    if-ne v0, v5, :cond_3

    const/4 v2, 0x3

    goto :goto_2

    .line 2180
    :cond_3
    if-ne v0, v6, :cond_4

    const/4 v2, 0x4

    goto :goto_2

    .line 2181
    :cond_4
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_1

    .line 2185
    :pswitch_2
    if-ne v0, v6, :cond_5

    const/4 v2, 0x5

    goto :goto_2

    .line 2186
    :cond_5
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_1

    .line 2192
    :pswitch_3
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v2, 0x6

    goto :goto_2

    .line 2193
    :cond_6
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_1

    .line 2198
    :pswitch_4
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v3

    if-eqz v3, :cond_7

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2199
    :cond_7
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_1

    .line 2207
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

    .line 2171
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
    .line 2215
    const/4 v1, 0x0

    .line 2217
    .local v1, found:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, p1, :cond_2

    .line 2218
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2220
    .local v0, c:C
    const/16 v3, 0x30

    if-ne v0, v3, :cond_1

    if-nez v1, :cond_1

    .line 2221
    const/4 v1, 0x1

    .line 2217
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2222
    :cond_1
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2223
    const/4 v3, 0x0

    .line 2227
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
    .line 341
    if-ltz p0, :cond_1

    if-ltz p1, :cond_1

    .line 342
    if-ge p0, p1, :cond_0

    move v0, p0

    .line 348
    :goto_0
    return v0

    :cond_0
    move v0, p1

    .line 342
    goto :goto_0

    .line 343
    :cond_1
    if-ltz p0, :cond_2

    move v0, p0

    .line 344
    goto :goto_0

    .line 345
    :cond_2
    if-ltz p1, :cond_3

    move v0, p1

    .line 346
    goto :goto_0

    .line 348
    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static networkPortionToCalledPartyBCD(Ljava/lang/String;)[B
    .locals 2
    .parameter "s"

    .prologue
    .line 1149
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1150
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
    .line 1169
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1170
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
    .line 1182
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
    .line 1191
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 1192
    .local v5, numberLenReal:I
    move v0, v5

    .line 1193
    .local v0, numberLenEffective:I
    const/16 v1, 0x2b

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    move v3, v1

    .line 1194
    .local v3, hasPlus:Z
    :goto_0
    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 1196
    :cond_0
    if-nez v0, :cond_2

    const/4 p0, 0x0

    .line 1221
    .end local v0           #numberLenEffective:I
    .end local p0
    .end local p1
    :goto_1
    return-object p0

    .line 1193
    .end local v3           #hasPlus:Z
    .restart local v0       #numberLenEffective:I
    .restart local p0
    .restart local p1
    :cond_1
    const/4 v1, 0x0

    move v3, v1

    goto :goto_0

    .line 1198
    .restart local v3       #hasPlus:Z
    :cond_2
    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v1, v0, 0x2

    .line 1199
    .end local v0           #numberLenEffective:I
    .local v1, resultLen:I
    const/4 v0, 0x1

    .line 1200
    .local v0, extraBytes:I
    if-eqz p1, :cond_9

    add-int/lit8 v0, v0, 0x1

    move v2, v0

    .line 1201
    .end local v0           #extraBytes:I
    .local v2, extraBytes:I
    :goto_2
    add-int v7, v1, v2

    .line 1203
    .end local v1           #resultLen:I
    .local v7, resultLen:I
    new-array v6, v7, [B

    .line 1205
    .local v6, result:[B
    const/4 v0, 0x0

    .line 1206
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

    .line 1207
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1208
    .local v0, c:C
    const/16 v8, 0x2b

    if-ne v0, v8, :cond_3

    move v0, v1

    .line 1206
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

    .line 1209
    .local v0, c:C
    :cond_3
    and-int/lit8 v8, v1, 0x1

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    const/4 v8, 0x4

    .line 1210
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

    .line 1211
    add-int/lit8 v0, v1, 0x1

    .end local v1           #digitCount:I
    .local v0, digitCount:I
    goto :goto_4

    .line 1209
    .end local v8           #shift:I
    .local v0, c:C
    .restart local v1       #digitCount:I
    :cond_4
    const/4 v8, 0x0

    goto :goto_5

    .line 1215
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

    .line 1217
    :cond_6
    const/4 p0, 0x0

    .line 1218
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

    .line 1219
    .end local p1           #offset:I
    .restart local p0       #offset:I
    :cond_7
    if-eqz v3, :cond_8

    const/16 p1, 0x91

    :goto_6
    int-to-byte p1, p1

    aput-byte p1, v6, p0

    move-object p0, v6

    .line 1221
    goto :goto_1

    .line 1219
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

    .line 2567
    move-object v1, p1

    .line 2573
    .local v1, retStr:Ljava/lang/String;
    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2574
    .local v0, newStr:Ljava/lang/String;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2575
    .local v2, sp:Landroid/content/SharedPreferences;
    const-string v4, "country_code"

    const-string v5, "011"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2577
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

    .line 2581
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isOneNanp(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isDefaultPlusCode(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2583
    move-object v1, v0

    .line 2591
    :cond_0
    :goto_2
    return-object v1

    :cond_1
    move v4, v8

    .line 2577
    goto :goto_0

    :cond_2
    move v5, v8

    goto :goto_1

    .line 2587
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

    .line 2056
    move-object v2, p0

    .line 2061
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

    .line 2064
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2065
    .local v1, newStr:Ljava/lang/String;
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isOneNanp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2067
    move-object v2, v1

    .line 2075
    .end local v1           #newStr:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 2069
    .restart local v1       #newStr:Ljava/lang/String;
    :cond_1
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultIdp()Ljava/lang/String;

    move-result-object v0

    .line 2071
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
    .line 1698
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "emergency_test_num"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/telephony/PhoneNumberUtils;->mEmergencyTestEnable:I

    .line 1701
    return-void
.end method

.method public static stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "s"
    .parameter "TOA"

    .prologue
    .line 877
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 883
    :goto_0
    return-object v0

    .line 879
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

    .line 880
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

    .line 883
    goto :goto_0
.end method

.method public static stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "phoneNumber"

    .prologue
    .line 273
    if-nez p0, :cond_0

    .line 274
    const/4 v4, 0x0

    .line 286
    :goto_0
    return-object v4

    .line 276
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 277
    .local v2, len:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 279
    .local v3, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 280
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 281
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 282
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 279
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 286
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
    .line 810
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 811
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
    .line 827
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 828
    .local v0, np:Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/telephony/PhoneNumberUtils;->internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static toaFromString(Ljava/lang/String;)I
    .locals 2
    .parameter "s"

    .prologue
    .line 893
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_0

    .line 894
    const/16 v0, 0x91

    .line 897
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

    .line 2294
    const/4 v5, 0x0

    .line 2295
    .local v5, state:I
    const/4 v0, 0x0

    .line 2296
    .local v0, ccc:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 2297
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_f

    .line 2298
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2299
    .local v1, ch:C
    packed-switch v5, :pswitch_data_0

    move-object v6, v7

    .line 2368
    .end local v1           #ch:C
    :goto_1
    return-object v6

    .line 2301
    .restart local v1       #ch:C
    :pswitch_0
    const/16 v6, 0x2b

    if-ne v1, v6, :cond_1

    const/4 v5, 0x1

    .line 2297
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2302
    :cond_1
    if-ne v1, v9, :cond_2

    const/4 v5, 0x2

    goto :goto_2

    .line 2303
    :cond_2
    if-ne v1, v8, :cond_4

    .line 2304
    if-eqz p1, :cond_3

    .line 2305
    const/16 v5, 0x8

    goto :goto_2

    :cond_3
    move-object v6, v7

    .line 2307
    goto :goto_1

    .line 2309
    :cond_4
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v7

    .line 2310
    goto :goto_1

    .line 2315
    :pswitch_1
    if-ne v1, v9, :cond_5

    const/4 v5, 0x3

    goto :goto_2

    .line 2316
    :cond_5
    if-ne v1, v8, :cond_6

    const/4 v5, 0x4

    goto :goto_2

    .line 2317
    :cond_6
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v7

    .line 2318
    goto :goto_1

    .line 2323
    :pswitch_2
    if-ne v1, v8, :cond_7

    const/4 v5, 0x5

    goto :goto_2

    .line 2324
    :cond_7
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v7

    .line 2325
    goto :goto_1

    .line 2335
    :pswitch_3
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v4

    .line 2336
    .local v4, ret:I
    if-lez v4, :cond_c

    .line 2337
    mul-int/lit8 v6, v0, 0xa

    add-int v0, v6, v4

    .line 2338
    const/16 v6, 0x64

    if-ge v0, v6, :cond_8

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isCountryCallingCode(I)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 2339
    :cond_8
    new-instance v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    add-int/lit8 v7, v2, 0x1

    invoke-direct {v6, v0, v7}, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;-><init>(II)V

    goto :goto_1

    .line 2341
    :cond_9
    const/4 v6, 0x1

    if-eq v5, v6, :cond_a

    const/4 v6, 0x3

    if-eq v5, v6, :cond_a

    const/4 v6, 0x5

    if-ne v5, v6, :cond_b

    .line 2342
    :cond_a
    const/4 v5, 0x6

    goto :goto_2

    .line 2344
    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 2346
    :cond_c
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v7

    .line 2347
    goto :goto_1

    .line 2352
    .end local v4           #ret:I
    :pswitch_4
    if-ne v1, v10, :cond_d

    const/16 v5, 0x9

    goto :goto_2

    .line 2353
    :cond_d
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v7

    .line 2354
    goto :goto_1

    .line 2358
    :pswitch_5
    if-ne v1, v10, :cond_e

    .line 2359
    new-instance v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    const/16 v7, 0x42

    add-int/lit8 v8, v2, 0x1

    invoke-direct {v6, v7, v8}, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;-><init>(II)V

    goto/16 :goto_1

    :cond_e
    move-object v6, v7

    .line 2361
    goto/16 :goto_1

    .end local v1           #ch:C
    :cond_f
    move-object v6, v7

    .line 2368
    goto/16 :goto_1

    .line 2299
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

    .line 2265
    if-gt v1, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 2266
    sub-int v0, p0, v1

    .line 2268
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

    .line 2381
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 2382
    .local v2, length:I
    move v1, p1

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 2383
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2384
    .local v0, ch:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v3

    if-ltz v3, :cond_0

    .line 2385
    add-int/lit8 v3, v1, 0x1

    .line 2390
    .end local v0           #ch:C
    :goto_1
    return v3

    .line 2386
    .restart local v0       #ch:C
    :cond_0
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    .line 2387
    goto :goto_1

    .line 2382
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #ch:C
    :cond_2
    move v3, v4

    .line 2390
    goto :goto_1
.end method
