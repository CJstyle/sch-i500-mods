.class Lcom/android/music/list/activity/MpListActivity$1indexEvent;
.super Ljava/lang/Object;
.source "MpListActivity.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwIndexScrollView$OnIndexSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/list/activity/MpListActivity;->initIndexer(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "indexEvent"
.end annotation


# instance fields
.field listView:Lcom/android/music/list/view/AbstractMpListView;

.field final synthetic this$0:Lcom/android/music/list/activity/MpListActivity;


# direct methods
.method public constructor <init>(Lcom/android/music/list/activity/MpListActivity;Lcom/android/music/list/view/AbstractMpListView;)V
    .locals 1
    .parameter
    .parameter "mlistView"

    .prologue
    .line 1627
    iput-object p1, p0, Lcom/android/music/list/activity/MpListActivity$1indexEvent;->this$0:Lcom/android/music/list/activity/MpListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1625
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/list/activity/MpListActivity$1indexEvent;->listView:Lcom/android/music/list/view/AbstractMpListView;

    .line 1628
    iput-object p2, p0, Lcom/android/music/list/activity/MpListActivity$1indexEvent;->listView:Lcom/android/music/list/view/AbstractMpListView;

    .line 1629
    return-void
.end method


# virtual methods
.method public onIndexSelected(I)V
    .locals 1
    .parameter "sectionIndex"

    .prologue
    .line 1633
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity$1indexEvent;->listView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v0, p1}, Lcom/android/music/list/view/AbstractMpListView;->setSelection(I)V

    .line 1634
    return-void
.end method
