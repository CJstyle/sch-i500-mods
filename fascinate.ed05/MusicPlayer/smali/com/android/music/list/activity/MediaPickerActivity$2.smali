.class Lcom/android/music/list/activity/MediaPickerActivity$2;
.super Ljava/lang/Object;
.source "MediaPickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/list/activity/MediaPickerActivity;->setNoItem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/list/activity/MediaPickerActivity;


# direct methods
.method constructor <init>(Lcom/android/music/list/activity/MediaPickerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 262
    iput-object p1, p0, Lcom/android/music/list/activity/MediaPickerActivity$2;->this$0:Lcom/android/music/list/activity/MediaPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/music/list/activity/MediaPickerActivity$2;->this$0:Lcom/android/music/list/activity/MediaPickerActivity;

    iget-object v0, v0, Lcom/android/music/list/activity/MediaPickerActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/music/list/view/AbstractMpListView;->optionMenuOperate(I)V

    .line 264
    return-void
.end method
