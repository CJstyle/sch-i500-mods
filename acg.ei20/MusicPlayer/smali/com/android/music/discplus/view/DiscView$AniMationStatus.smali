.class public final enum Lcom/android/music/discplus/view/DiscView$AniMationStatus;
.super Ljava/lang/Enum;
.source "DiscView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/discplus/view/DiscView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AniMationStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/music/discplus/view/DiscView$AniMationStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/music/discplus/view/DiscView$AniMationStatus;

.field public static final enum ANIMATION_FINISHED:Lcom/android/music/discplus/view/DiscView$AniMationStatus;

.field public static final enum ANIMATION_PENDING:Lcom/android/music/discplus/view/DiscView$AniMationStatus;

.field public static final enum ANIMATION_RUNNING:Lcom/android/music/discplus/view/DiscView$AniMationStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 114
    new-instance v0, Lcom/android/music/discplus/view/DiscView$AniMationStatus;

    const-string v1, "ANIMATION_PENDING"

    invoke-direct {v0, v1, v2}, Lcom/android/music/discplus/view/DiscView$AniMationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/music/discplus/view/DiscView$AniMationStatus;->ANIMATION_PENDING:Lcom/android/music/discplus/view/DiscView$AniMationStatus;

    .line 115
    new-instance v0, Lcom/android/music/discplus/view/DiscView$AniMationStatus;

    const-string v1, "ANIMATION_RUNNING"

    invoke-direct {v0, v1, v3}, Lcom/android/music/discplus/view/DiscView$AniMationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/music/discplus/view/DiscView$AniMationStatus;->ANIMATION_RUNNING:Lcom/android/music/discplus/view/DiscView$AniMationStatus;

    .line 116
    new-instance v0, Lcom/android/music/discplus/view/DiscView$AniMationStatus;

    const-string v1, "ANIMATION_FINISHED"

    invoke-direct {v0, v1, v4}, Lcom/android/music/discplus/view/DiscView$AniMationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/music/discplus/view/DiscView$AniMationStatus;->ANIMATION_FINISHED:Lcom/android/music/discplus/view/DiscView$AniMationStatus;

    .line 113
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/music/discplus/view/DiscView$AniMationStatus;

    sget-object v1, Lcom/android/music/discplus/view/DiscView$AniMationStatus;->ANIMATION_PENDING:Lcom/android/music/discplus/view/DiscView$AniMationStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/music/discplus/view/DiscView$AniMationStatus;->ANIMATION_RUNNING:Lcom/android/music/discplus/view/DiscView$AniMationStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/music/discplus/view/DiscView$AniMationStatus;->ANIMATION_FINISHED:Lcom/android/music/discplus/view/DiscView$AniMationStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/music/discplus/view/DiscView$AniMationStatus;->$VALUES:[Lcom/android/music/discplus/view/DiscView$AniMationStatus;

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
    .line 113
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/music/discplus/view/DiscView$AniMationStatus;
    .locals 1
    .parameter

    .prologue
    .line 113
    const-class v0, Lcom/android/music/discplus/view/DiscView$AniMationStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/music/discplus/view/DiscView$AniMationStatus;

    return-object p0
.end method

.method public static values()[Lcom/android/music/discplus/view/DiscView$AniMationStatus;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/android/music/discplus/view/DiscView$AniMationStatus;->$VALUES:[Lcom/android/music/discplus/view/DiscView$AniMationStatus;

    invoke-virtual {v0}, [Lcom/android/music/discplus/view/DiscView$AniMationStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/music/discplus/view/DiscView$AniMationStatus;

    return-object v0
.end method
