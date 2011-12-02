.class public final enum Lcom/android/music/discplus/view/DiscView$CurrentView;
.super Ljava/lang/Enum;
.source "DiscView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/discplus/view/DiscView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CurrentView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/music/discplus/view/DiscView$CurrentView;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/music/discplus/view/DiscView$CurrentView;

.field public static final enum DISC_VIEW:Lcom/android/music/discplus/view/DiscView$CurrentView;

.field public static final enum LIST_VIEW:Lcom/android/music/discplus/view/DiscView$CurrentView;

.field public static final enum TOP_VIEW:Lcom/android/music/discplus/view/DiscView$CurrentView;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 120
    new-instance v0, Lcom/android/music/discplus/view/DiscView$CurrentView;

    const-string v1, "DISC_VIEW"

    invoke-direct {v0, v1, v2}, Lcom/android/music/discplus/view/DiscView$CurrentView;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/music/discplus/view/DiscView$CurrentView;->DISC_VIEW:Lcom/android/music/discplus/view/DiscView$CurrentView;

    .line 121
    new-instance v0, Lcom/android/music/discplus/view/DiscView$CurrentView;

    const-string v1, "TOP_VIEW"

    invoke-direct {v0, v1, v3}, Lcom/android/music/discplus/view/DiscView$CurrentView;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/music/discplus/view/DiscView$CurrentView;->TOP_VIEW:Lcom/android/music/discplus/view/DiscView$CurrentView;

    .line 122
    new-instance v0, Lcom/android/music/discplus/view/DiscView$CurrentView;

    const-string v1, "LIST_VIEW"

    invoke-direct {v0, v1, v4}, Lcom/android/music/discplus/view/DiscView$CurrentView;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/music/discplus/view/DiscView$CurrentView;->LIST_VIEW:Lcom/android/music/discplus/view/DiscView$CurrentView;

    .line 119
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/music/discplus/view/DiscView$CurrentView;

    sget-object v1, Lcom/android/music/discplus/view/DiscView$CurrentView;->DISC_VIEW:Lcom/android/music/discplus/view/DiscView$CurrentView;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/music/discplus/view/DiscView$CurrentView;->TOP_VIEW:Lcom/android/music/discplus/view/DiscView$CurrentView;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/music/discplus/view/DiscView$CurrentView;->LIST_VIEW:Lcom/android/music/discplus/view/DiscView$CurrentView;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/music/discplus/view/DiscView$CurrentView;->$VALUES:[Lcom/android/music/discplus/view/DiscView$CurrentView;

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
    .line 119
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/music/discplus/view/DiscView$CurrentView;
    .locals 1
    .parameter "name"

    .prologue
    .line 119
    const-class v0, Lcom/android/music/discplus/view/DiscView$CurrentView;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/discplus/view/DiscView$CurrentView;

    return-object p0
.end method

.method public static final values()[Lcom/android/music/discplus/view/DiscView$CurrentView;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcom/android/music/discplus/view/DiscView$CurrentView;->$VALUES:[Lcom/android/music/discplus/view/DiscView$CurrentView;

    invoke-virtual {v0}, [Lcom/android/music/discplus/view/DiscView$CurrentView;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/music/discplus/view/DiscView$CurrentView;

    return-object v0
.end method
