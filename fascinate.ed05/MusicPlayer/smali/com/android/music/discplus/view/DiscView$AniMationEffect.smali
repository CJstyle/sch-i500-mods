.class public final enum Lcom/android/music/discplus/view/DiscView$AniMationEffect;
.super Ljava/lang/Enum;
.source "DiscView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/discplus/view/DiscView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AniMationEffect"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/music/discplus/view/DiscView$AniMationEffect;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/music/discplus/view/DiscView$AniMationEffect;

.field public static final enum ANIMATION_CHANGEVIEW_DISCTOLIST:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

.field public static final enum ANIMATION_CHANGEVIEW_DISCTOTOP:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

.field public static final enum ANIMATION_CHANGEVIEW_LISTTODISC:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

.field public static final enum ANIMATION_CHANGEVIEW_TOPTODISC:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

.field public static final enum ANIMATION_DISMISS:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

.field public static final enum ANIMATION_FADE_IN_DISCVIEW:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

.field public static final enum ANIMATION_FADE_OUT_DISCVIEW:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

.field public static final enum ANIMATION_INIT:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

.field public static final enum ANIMATION_LOADING:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

.field public static final enum ANIMATION_NONE:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

.field public static final enum ANIMATION_ROLLING:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

.field public static final enum ANIMATION_STOP:Lcom/android/music/discplus/view/DiscView$AniMationEffect;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 97
    new-instance v0, Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    const-string v1, "ANIMATION_INIT"

    invoke-direct {v0, v1, v3}, Lcom/android/music/discplus/view/DiscView$AniMationEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_INIT:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    .line 98
    new-instance v0, Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    const-string v1, "ANIMATION_NONE"

    invoke-direct {v0, v1, v4}, Lcom/android/music/discplus/view/DiscView$AniMationEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_NONE:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    .line 99
    new-instance v0, Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    const-string v1, "ANIMATION_LOADING"

    invoke-direct {v0, v1, v5}, Lcom/android/music/discplus/view/DiscView$AniMationEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_LOADING:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    .line 100
    new-instance v0, Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    const-string v1, "ANIMATION_DISMISS"

    invoke-direct {v0, v1, v6}, Lcom/android/music/discplus/view/DiscView$AniMationEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_DISMISS:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    .line 101
    new-instance v0, Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    const-string v1, "ANIMATION_STOP"

    invoke-direct {v0, v1, v7}, Lcom/android/music/discplus/view/DiscView$AniMationEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_STOP:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    .line 102
    new-instance v0, Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    const-string v1, "ANIMATION_ROLLING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/music/discplus/view/DiscView$AniMationEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_ROLLING:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    .line 103
    new-instance v0, Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    const-string v1, "ANIMATION_CHANGEVIEW_TOPTODISC"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/music/discplus/view/DiscView$AniMationEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_CHANGEVIEW_TOPTODISC:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    .line 104
    new-instance v0, Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    const-string v1, "ANIMATION_CHANGEVIEW_DISCTOTOP"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/music/discplus/view/DiscView$AniMationEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_CHANGEVIEW_DISCTOTOP:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    .line 105
    new-instance v0, Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    const-string v1, "ANIMATION_FADE_IN_DISCVIEW"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/music/discplus/view/DiscView$AniMationEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_FADE_IN_DISCVIEW:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    .line 106
    new-instance v0, Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    const-string v1, "ANIMATION_FADE_OUT_DISCVIEW"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/music/discplus/view/DiscView$AniMationEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_FADE_OUT_DISCVIEW:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    .line 107
    new-instance v0, Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    const-string v1, "ANIMATION_CHANGEVIEW_DISCTOLIST"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/music/discplus/view/DiscView$AniMationEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_CHANGEVIEW_DISCTOLIST:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    .line 108
    new-instance v0, Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    const-string v1, "ANIMATION_CHANGEVIEW_LISTTODISC"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/music/discplus/view/DiscView$AniMationEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_CHANGEVIEW_LISTTODISC:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    .line 96
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    sget-object v1, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_INIT:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_NONE:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_LOADING:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_DISMISS:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_STOP:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_ROLLING:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_CHANGEVIEW_TOPTODISC:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_CHANGEVIEW_DISCTOTOP:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_FADE_IN_DISCVIEW:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_FADE_OUT_DISCVIEW:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_CHANGEVIEW_DISCTOLIST:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_CHANGEVIEW_LISTTODISC:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->$VALUES:[Lcom/android/music/discplus/view/DiscView$AniMationEffect;

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
    .line 96
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/music/discplus/view/DiscView$AniMationEffect;
    .locals 1
    .parameter "name"

    .prologue
    .line 96
    const-class v0, Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    return-object p0
.end method

.method public static final values()[Lcom/android/music/discplus/view/DiscView$AniMationEffect;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->$VALUES:[Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    invoke-virtual {v0}, [Lcom/android/music/discplus/view/DiscView$AniMationEffect;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    return-object v0
.end method
