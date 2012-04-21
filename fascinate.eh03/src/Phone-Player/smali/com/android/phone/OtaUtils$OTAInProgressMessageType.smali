.class final enum Lcom/android/phone/OtaUtils$OTAInProgressMessageType;
.super Ljava/lang/Enum;
.source "OtaUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/OtaUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "OTAInProgressMessageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/OtaUtils$OTAInProgressMessageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/OtaUtils$OTAInProgressMessageType;

.field public static final enum OTA_COMMIT_OK:Lcom/android/phone/OtaUtils$OTAInProgressMessageType;

.field public static final enum OTA_IN_PROGRESS:Lcom/android/phone/OtaUtils$OTAInProgressMessageType;

.field public static final enum OTA_LOCK_CODE_PASSWD_SET:Lcom/android/phone/OtaUtils$OTAInProgressMessageType;

.field public static final enum OTA_PRL_DWNLD_OK:Lcom/android/phone/OtaUtils$OTAInProgressMessageType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 118
    new-instance v0, Lcom/android/phone/OtaUtils$OTAInProgressMessageType;

    const-string v1, "OTA_IN_PROGRESS"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/OtaUtils$OTAInProgressMessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/OtaUtils$OTAInProgressMessageType;->OTA_IN_PROGRESS:Lcom/android/phone/OtaUtils$OTAInProgressMessageType;

    .line 119
    new-instance v0, Lcom/android/phone/OtaUtils$OTAInProgressMessageType;

    const-string v1, "OTA_LOCK_CODE_PASSWD_SET"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/OtaUtils$OTAInProgressMessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/OtaUtils$OTAInProgressMessageType;->OTA_LOCK_CODE_PASSWD_SET:Lcom/android/phone/OtaUtils$OTAInProgressMessageType;

    .line 120
    new-instance v0, Lcom/android/phone/OtaUtils$OTAInProgressMessageType;

    const-string v1, "OTA_PRL_DWNLD_OK"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/OtaUtils$OTAInProgressMessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/OtaUtils$OTAInProgressMessageType;->OTA_PRL_DWNLD_OK:Lcom/android/phone/OtaUtils$OTAInProgressMessageType;

    .line 121
    new-instance v0, Lcom/android/phone/OtaUtils$OTAInProgressMessageType;

    const-string v1, "OTA_COMMIT_OK"

    invoke-direct {v0, v1, v5}, Lcom/android/phone/OtaUtils$OTAInProgressMessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/OtaUtils$OTAInProgressMessageType;->OTA_COMMIT_OK:Lcom/android/phone/OtaUtils$OTAInProgressMessageType;

    .line 117
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/phone/OtaUtils$OTAInProgressMessageType;

    sget-object v1, Lcom/android/phone/OtaUtils$OTAInProgressMessageType;->OTA_IN_PROGRESS:Lcom/android/phone/OtaUtils$OTAInProgressMessageType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/OtaUtils$OTAInProgressMessageType;->OTA_LOCK_CODE_PASSWD_SET:Lcom/android/phone/OtaUtils$OTAInProgressMessageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/OtaUtils$OTAInProgressMessageType;->OTA_PRL_DWNLD_OK:Lcom/android/phone/OtaUtils$OTAInProgressMessageType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/phone/OtaUtils$OTAInProgressMessageType;->OTA_COMMIT_OK:Lcom/android/phone/OtaUtils$OTAInProgressMessageType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/phone/OtaUtils$OTAInProgressMessageType;->$VALUES:[Lcom/android/phone/OtaUtils$OTAInProgressMessageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/OtaUtils$OTAInProgressMessageType;
    .locals 1
    .parameter

    .prologue
    .line 117
    const-class v0, Lcom/android/phone/OtaUtils$OTAInProgressMessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/phone/OtaUtils$OTAInProgressMessageType;

    return-object p0
.end method

.method public static values()[Lcom/android/phone/OtaUtils$OTAInProgressMessageType;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/android/phone/OtaUtils$OTAInProgressMessageType;->$VALUES:[Lcom/android/phone/OtaUtils$OTAInProgressMessageType;

    invoke-virtual {v0}, [Lcom/android/phone/OtaUtils$OTAInProgressMessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/OtaUtils$OTAInProgressMessageType;

    return-object v0
.end method
