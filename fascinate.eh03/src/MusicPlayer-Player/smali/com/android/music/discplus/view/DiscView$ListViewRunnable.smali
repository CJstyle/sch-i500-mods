.class Lcom/android/music/discplus/view/DiscView$ListViewRunnable;
.super Ljava/lang/Object;
.source "DiscView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/discplus/view/DiscView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListViewRunnable"
.end annotation


# instance fields
.field private listViewDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/music/discplus/data/ListViewData;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/music/discplus/view/DiscView;


# direct methods
.method public constructor <init>(Lcom/android/music/discplus/view/DiscView;)V
    .locals 0
    .parameter

    .prologue
    .line 1430
    iput-object p1, p0, Lcom/android/music/discplus/view/DiscView$ListViewRunnable;->this$0:Lcom/android/music/discplus/view/DiscView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1432
    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    .prologue
    .line 1458
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$ListViewRunnable;->listViewDatas:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$ListViewRunnable;->listViewDatas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1459
    :cond_0
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 1446
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$ListViewRunnable;->this$0:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v0}, Lcom/android/music/discplus/view/DiscView;->getAnimationStatus()Lcom/android/music/discplus/view/DiscView$AniMationStatus;

    move-result-object v0

    sget-object v1, Lcom/android/music/discplus/view/DiscView$AniMationStatus;->ANIMATION_RUNNING:Lcom/android/music/discplus/view/DiscView$AniMationStatus;

    if-eq v0, v1, :cond_0

    .line 1447
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$ListViewRunnable;->this$0:Lcom/android/music/discplus/view/DiscView;

    iget-object v1, p0, Lcom/android/music/discplus/view/DiscView$ListViewRunnable;->listViewDatas:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/android/music/discplus/view/DiscView;->access$1800(Lcom/android/music/discplus/view/DiscView;Ljava/util/ArrayList;)V

    .line 1448
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$ListViewRunnable;->this$0:Lcom/android/music/discplus/view/DiscView;

    sget-object v1, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_FADE_OUT_DISCVIEW:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    invoke-virtual {v0, v1}, Lcom/android/music/discplus/view/DiscView;->preAnimationEffect(Lcom/android/music/discplus/view/DiscView$AniMationEffect;)V

    .line 1449
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$ListViewRunnable;->this$0:Lcom/android/music/discplus/view/DiscView;

    new-instance v1, Lcom/android/music/discplus/view/DiscView$ListViewRunnable$1;

    invoke-direct {v1, p0}, Lcom/android/music/discplus/view/DiscView$ListViewRunnable$1;-><init>(Lcom/android/music/discplus/view/DiscView$ListViewRunnable;)V

    sget-object v2, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_FADE_OUT_DISCVIEW:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    invoke-virtual {v0, v1, v2}, Lcom/android/music/discplus/view/DiscView;->showChangeDiscAnimation(Ljava/lang/Runnable;Lcom/android/music/discplus/view/DiscView$AniMationEffect;)V

    .line 1455
    :cond_0
    return-void
.end method

.method public startListViewShow()V
    .locals 4

    .prologue
    .line 1435
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscView$ListViewRunnable;->this$0:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v2}, Lcom/android/music/discplus/view/DiscView;->getCurrentSelection()I

    move-result v0

    .line 1436
    .local v0, resultPositions:I
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscView$ListViewRunnable;->this$0:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v2}, Lcom/android/music/discplus/view/DiscView;->getPlusData()Lcom/android/music/discplus/data/DiscPlusData;

    move-result-object v2

    iget v1, v2, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusType:I

    .line 1437
    .local v1, type:I
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscView$ListViewRunnable;->this$0:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v2}, Lcom/android/music/discplus/view/DiscView;->getPlusData()Lcom/android/music/discplus/data/DiscPlusData;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/android/music/discplus/data/DiscPlusData;->getTypeDiscPlusListView(II)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/music/discplus/view/DiscView$ListViewRunnable;->listViewDatas:Ljava/util/ArrayList;

    .line 1438
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscView$ListViewRunnable;->listViewDatas:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/music/discplus/view/DiscView$ListViewRunnable;->listViewDatas:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1439
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscView$ListViewRunnable;->this$0:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v2, p0}, Lcom/android/music/discplus/view/DiscView;->post(Ljava/lang/Runnable;)Z

    .line 1443
    :goto_0
    return-void

    .line 1441
    :cond_0
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscView$ListViewRunnable;->this$0:Lcom/android/music/discplus/view/DiscView;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/music/discplus/view/DiscView;->access$1700(Lcom/android/music/discplus/view/DiscView;I)V

    goto :goto_0
.end method
