.class Lcom/android/music/discplus/util/DiscPlusManager$1;
.super Ljava/lang/Object;
.source "DiscPlusManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/discplus/util/DiscPlusManager;->setMediaScannerReceive(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/discplus/util/DiscPlusManager;


# direct methods
.method constructor <init>(Lcom/android/music/discplus/util/DiscPlusManager;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/music/discplus/util/DiscPlusManager$1;->this$0:Lcom/android/music/discplus/util/DiscPlusManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/music/discplus/util/DiscPlusManager$1;->this$0:Lcom/android/music/discplus/util/DiscPlusManager;

    invoke-static {v0}, Lcom/android/music/discplus/util/DiscPlusManager;->access$000(Lcom/android/music/discplus/util/DiscPlusManager;)Lcom/android/music/discplus/view/DiscView;

    move-result-object v0

    sget-object v1, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_CHANGEVIEW_LISTTODISC:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    invoke-virtual {v0, v1}, Lcom/android/music/discplus/view/DiscView;->postAnimationEffect(Lcom/android/music/discplus/view/DiscView$AniMationEffect;)V

    .line 80
    return-void
.end method
