.class Lcom/android/music/list/activity/MediaPickerActivity$1indexEvent;
.super Ljava/lang/Object;
.source "MediaPickerActivity.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwIndexScrollView$OnIndexSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/list/activity/MediaPickerActivity;->initIndexer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "indexEvent"
.end annotation


# instance fields
.field listView:Lcom/android/music/list/view/AbstractMpListView;

.field final synthetic this$0:Lcom/android/music/list/activity/MediaPickerActivity;


# direct methods
.method public constructor <init>(Lcom/android/music/list/activity/MediaPickerActivity;Lcom/android/music/list/view/AbstractMpListView;)V
    .locals 1
    .parameter
    .parameter "mlistView"

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/music/list/activity/MediaPickerActivity$1indexEvent;->this$0:Lcom/android/music/list/activity/MediaPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/list/activity/MediaPickerActivity$1indexEvent;->listView:Lcom/android/music/list/view/AbstractMpListView;

    .line 211
    iput-object p2, p0, Lcom/android/music/list/activity/MediaPickerActivity$1indexEvent;->listView:Lcom/android/music/list/view/AbstractMpListView;

    .line 212
    return-void
.end method


# virtual methods
.method public onIndexSelected(I)V
    .locals 1
    .parameter "sectionIndex"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/music/list/activity/MediaPickerActivity$1indexEvent;->listView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v0, p1}, Lcom/android/music/list/view/AbstractMpListView;->setSelection(I)V

    .line 217
    return-void
.end method
