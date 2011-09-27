.class Lcom/android/music/list/activity/MpListActivity$3;
.super Ljava/lang/Object;
.source "MpListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/list/activity/MpListActivity;->setNoItem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/list/activity/MpListActivity;


# direct methods
.method constructor <init>(Lcom/android/music/list/activity/MpListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1508
    iput-object p1, p0, Lcom/android/music/list/activity/MpListActivity$3;->this$0:Lcom/android/music/list/activity/MpListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 1510
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity$3;->this$0:Lcom/android/music/list/activity/MpListActivity;

    iget-object v0, v0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/music/list/view/AbstractMpListView;->optionMenuOperate(I)V

    .line 1511
    return-void
.end method
