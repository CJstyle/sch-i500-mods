.class Lcom/android/music/list/view/AbstractMpListView$1;
.super Ljava/lang/Object;
.source "AbstractMpListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/list/view/AbstractMpListView;->setSoftKey(ILandroid/widget/Button;Landroid/widget/Button;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/list/view/AbstractMpListView;

.field final synthetic val$checkListType:I


# direct methods
.method constructor <init>(Lcom/android/music/list/view/AbstractMpListView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2074
    iput-object p1, p0, Lcom/android/music/list/view/AbstractMpListView$1;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    iput p2, p0, Lcom/android/music/list/view/AbstractMpListView$1;->val$checkListType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 2075
    invoke-static {}, Lcom/android/music/list/view/AbstractMpListView;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onClick (Right Softkey)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2076
    const/4 v0, 0x0

    sput-object v0, Lcom/android/music/list/view/AbstractMpListView;->mHasCheckListView:Lcom/android/music/list/view/AbstractMpListView;

    .line 2077
    iget v0, p0, Lcom/android/music/list/view/AbstractMpListView$1;->val$checkListType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2078
    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView$1;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 2080
    :cond_0
    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView$1;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    iget-object p0, v0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    .end local p0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2081
    return-void
.end method
