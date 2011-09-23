.class public final enum Lcom/android/internal/telephony/DataConnection$State;
.super Ljava/lang/Enum;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/DataConnection$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/DataConnection$State;

.field public static final enum ACTIVATING:Lcom/android/internal/telephony/DataConnection$State;

.field public static final enum ACTIVATING_PPP:Lcom/android/internal/telephony/DataConnection$State;

.field public static final enum ACTIVE:Lcom/android/internal/telephony/DataConnection$State;

.field public static final enum DISCONNECTING:Lcom/android/internal/telephony/DataConnection$State;

.field public static final enum FAILED:Lcom/android/internal/telephony/DataConnection$State;

.field public static final enum INACTIVE:Lcom/android/internal/telephony/DataConnection$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 191
    new-instance v0, Lcom/android/internal/telephony/DataConnection$State;

    const-string v1, "INACTIVE"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/DataConnection$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$State;->INACTIVE:Lcom/android/internal/telephony/DataConnection$State;

    .line 192
    new-instance v0, Lcom/android/internal/telephony/DataConnection$State;

    const-string v1, "ACTIVE"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/DataConnection$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$State;->ACTIVE:Lcom/android/internal/telephony/DataConnection$State;

    .line 193
    new-instance v0, Lcom/android/internal/telephony/DataConnection$State;

    const-string v1, "ACTIVATING"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/DataConnection$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$State;->ACTIVATING:Lcom/android/internal/telephony/DataConnection$State;

    .line 194
    new-instance v0, Lcom/android/internal/telephony/DataConnection$State;

    const-string v1, "ACTIVATING_PPP"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/DataConnection$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$State;->ACTIVATING_PPP:Lcom/android/internal/telephony/DataConnection$State;

    .line 195
    new-instance v0, Lcom/android/internal/telephony/DataConnection$State;

    const-string v1, "DISCONNECTING"

    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/DataConnection$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$State;->DISCONNECTING:Lcom/android/internal/telephony/DataConnection$State;

    .line 196
    new-instance v0, Lcom/android/internal/telephony/DataConnection$State;

    const-string v1, "FAILED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnection$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$State;->FAILED:Lcom/android/internal/telephony/DataConnection$State;

    .line 190
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/internal/telephony/DataConnection$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnection$State;->INACTIVE:Lcom/android/internal/telephony/DataConnection$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/DataConnection$State;->ACTIVE:Lcom/android/internal/telephony/DataConnection$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/DataConnection$State;->ACTIVATING:Lcom/android/internal/telephony/DataConnection$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/DataConnection$State;->ACTIVATING_PPP:Lcom/android/internal/telephony/DataConnection$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/DataConnection$State;->DISCONNECTING:Lcom/android/internal/telephony/DataConnection$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/telephony/DataConnection$State;->FAILED:Lcom/android/internal/telephony/DataConnection$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/DataConnection$State;->$VALUES:[Lcom/android/internal/telephony/DataConnection$State;

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
    .line 190
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/DataConnection$State;
    .locals 1
    .parameter "name"

    .prologue
    .line 190
    const-class v0, Lcom/android/internal/telephony/DataConnection$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/DataConnection$State;

    return-object p0
.end method

.method public static final values()[Lcom/android/internal/telephony/DataConnection$State;
    .locals 1

    .prologue
    .line 190
    sget-object v0, Lcom/android/internal/telephony/DataConnection$State;->$VALUES:[Lcom/android/internal/telephony/DataConnection$State;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/DataConnection$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/DataConnection$State;

    return-object v0
.end method


# virtual methods
.method public isActive()Z
    .locals 1

    .prologue
    .line 216
    sget-object v0, Lcom/android/internal/telephony/DataConnection$State;->ACTIVE:Lcom/android/internal/telephony/DataConnection$State;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInactive()Z
    .locals 1

    .prologue
    .line 220
    sget-object v0, Lcom/android/internal/telephony/DataConnection$State;->INACTIVE:Lcom/android/internal/telephony/DataConnection$State;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 199
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$State:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnection$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 211
    const-string v0, "inactive"

    :goto_0
    return-object v0

    .line 201
    :pswitch_0
    const-string v0, "active"

    goto :goto_0

    .line 203
    :pswitch_1
    const-string/jumbo v0, "setting up"

    goto :goto_0

    .line 205
    :pswitch_2
    const-string v0, "activing ppp"

    goto :goto_0

    .line 207
    :pswitch_3
    const-string v0, "disconnecting"

    goto :goto_0

    .line 209
    :pswitch_4
    const-string v0, "failed"

    goto :goto_0

    .line 199
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
