.class public final Landroid/provider/Telephony$Carriers;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Carriers"
.end annotation


# static fields
.field public static final APN:Ljava/lang/String; = "apn"

.field public static final AUTH_TYPE:Ljava/lang/String; = "authtype"

.field public static final CONTENT_CSC_URI:Landroid/net/Uri; = null

.field public static final CONTENT_OPENMARKET_URI:Landroid/net/Uri; = null

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CURRENT:Ljava/lang/String; = "current"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "name ASC"

.field public static final MCC:Ljava/lang/String; = "mcc"

.field public static final MMSC:Ljava/lang/String; = "mmsc"

.field public static final MMSC_DOMESTIC:Ljava/lang/String; = "mmsc_domestic"

.field public static final MMSC_TEST:Ljava/lang/String; = "mmsc_test"

.field public static final MMSPORT:Ljava/lang/String; = "mmsport"

.field public static final MMSPROXY:Ljava/lang/String; = "mmsproxy"

.field public static final MMS_LOCKCODE:Ljava/lang/String; = "mms_lockcode"

.field public static final MMS_POST_URL:Ljava/lang/String; = "mms_post_url"

.field public static final MNC:Ljava/lang/String; = "mnc"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final NUMERIC:Ljava/lang/String; = "numeric"

.field public static final NWK_NAME:Ljava/lang/String; = "nwkname"

.field public static final PASSWORD:Ljava/lang/String; = "password"

.field public static final PASSWORD_DOMESTIC:Ljava/lang/String; = "password_domestic"

.field public static final PASSWORD_TEST:Ljava/lang/String; = "password_test"

.field public static final PORT:Ljava/lang/String; = "port"

.field public static final PROTOCOL:Ljava/lang/String; = "protocol"

.field public static final PROXY:Ljava/lang/String; = "proxy"

.field public static final ROAMING_PROTOCOL:Ljava/lang/String; = "roaming_protocol"

.field public static final SERVER:Ljava/lang/String; = "server"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final UAPROF:Ljava/lang/String; = "uaprof"

.field public static final UPLOADSHORTCODE:Ljava/lang/String; = "uploadshortcode"

.field public static final UPLOADSHORTCODE_TEST:Ljava/lang/String; = "uploadshortcode_test"

.field public static final USER:Ljava/lang/String; = "user"

.field public static final USERAGENT:Ljava/lang/String; = "useragent"

.field public static final USER_DOMESTIC:Ljava/lang/String; = "user_domestic"

.field public static final USER_TEST:Ljava/lang/String; = "user_test"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1945
    const-string v0, "content://telephony/carriers"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    .line 2028
    const-string v0, "content://telephony/carriers/openmarketapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Carriers;->CONTENT_OPENMARKET_URI:Landroid/net/Uri;

    .line 2031
    const-string v0, "content://telephony/carriers/csc"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Carriers;->CONTENT_CSC_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1941
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method