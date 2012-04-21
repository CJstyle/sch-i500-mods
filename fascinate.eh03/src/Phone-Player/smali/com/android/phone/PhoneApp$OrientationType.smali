.class public final enum Lcom/android/phone/PhoneApp$OrientationType;
.super Ljava/lang/Enum;
.source "PhoneApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OrientationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/PhoneApp$OrientationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/PhoneApp$OrientationType;

.field public static final enum BAR_TYPE:Lcom/android/phone/PhoneApp$OrientationType;

.field public static final enum LANDSCAPE_ONLY:Lcom/android/phone/PhoneApp$OrientationType;

.field public static final enum PORTRAIT_ONLY:Lcom/android/phone/PhoneApp$OrientationType;

.field public static final enum QWERTY_TYPE:Lcom/android/phone/PhoneApp$OrientationType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 192
    new-instance v0, Lcom/android/phone/PhoneApp$OrientationType;

    const-string v1, "BAR_TYPE"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/PhoneApp$OrientationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/PhoneApp$OrientationType;->BAR_TYPE:Lcom/android/phone/PhoneApp$OrientationType;

    .line 193
    new-instance v0, Lcom/android/phone/PhoneApp$OrientationType;

    const-string v1, "QWERTY_TYPE"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/PhoneApp$OrientationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/PhoneApp$OrientationType;->QWERTY_TYPE:Lcom/android/phone/PhoneApp$OrientationType;

    .line 194
    new-instance v0, Lcom/android/phone/PhoneApp$OrientationType;

    const-string v1, "PORTRAIT_ONLY"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/PhoneApp$OrientationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/PhoneApp$OrientationType;->PORTRAIT_ONLY:Lcom/android/phone/PhoneApp$OrientationType;

    .line 195
    new-instance v0, Lcom/android/phone/PhoneApp$OrientationType;

    const-string v1, "LANDSCAPE_ONLY"

    invoke-direct {v0, v1, v5}, Lcom/android/phone/PhoneApp$OrientationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/PhoneApp$OrientationType;->LANDSCAPE_ONLY:Lcom/android/phone/PhoneApp$OrientationType;

    .line 191
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/phone/PhoneApp$OrientationType;

    sget-object v1, Lcom/android/phone/PhoneApp$OrientationType;->BAR_TYPE:Lcom/android/phone/PhoneApp$OrientationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/PhoneApp$OrientationType;->QWERTY_TYPE:Lcom/android/phone/PhoneApp$OrientationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/PhoneApp$OrientationType;->PORTRAIT_ONLY:Lcom/android/phone/PhoneApp$OrientationType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/phone/PhoneApp$OrientationType;->LANDSCAPE_ONLY:Lcom/android/phone/PhoneApp$OrientationType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/phone/PhoneApp$OrientationType;->$VALUES:[Lcom/android/phone/PhoneApp$OrientationType;

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
    .line 191
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/PhoneApp$OrientationType;
    .locals 1
    .parameter

    .prologue
    .line 191
    const-class v0, Lcom/android/phone/PhoneApp$OrientationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/phone/PhoneApp$OrientationType;

    return-object p0
.end method

.method public static values()[Lcom/android/phone/PhoneApp$OrientationType;
    .locals 1

    .prologue
    .line 191
    sget-object v0, Lcom/android/phone/PhoneApp$OrientationType;->$VALUES:[Lcom/android/phone/PhoneApp$OrientationType;

    invoke-virtual {v0}, [Lcom/android/phone/PhoneApp$OrientationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/PhoneApp$OrientationType;

    return-object v0
.end method
