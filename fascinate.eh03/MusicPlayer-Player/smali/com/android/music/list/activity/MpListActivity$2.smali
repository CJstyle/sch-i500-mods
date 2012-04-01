.class Lcom/android/music/list/activity/MpListActivity$2;
.super Ljava/lang/Object;
.source "MpListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/list/activity/MpListActivity;->initListByID(I)V
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
    .line 1317
    iput-object p1, p0, Lcom/android/music/list/activity/MpListActivity$2;->this$0:Lcom/android/music/list/activity/MpListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 1326
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity$2;->this$0:Lcom/android/music/list/activity/MpListActivity;

    const-class v2, Lcom/android/music/player/activity/MusicPlayer;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1327
    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1331
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity$2;->this$0:Lcom/android/music/list/activity/MpListActivity;

    iget v1, v1, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity$2;->this$0:Lcom/android/music/list/activity/MpListActivity;

    iget-object v1, v1, Lcom/android/music/list/activity/MpListActivity;->mConditions:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity$2;->this$0:Lcom/android/music/list/activity/MpListActivity;

    iget-object v1, v1, Lcom/android/music/list/activity/MpListActivity;->mConditions:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const-string v2, "-10"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1333
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity$2;->this$0:Lcom/android/music/list/activity/MpListActivity;

    invoke-virtual {v0}, Lcom/android/music/list/activity/MpListActivity;->finish()V

    .line 1334
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity$2;->this$0:Lcom/android/music/list/activity/MpListActivity;

    const v1, 0x7f040006

    const v2, 0x7f040007

    invoke-virtual {v0, v1, v2}, Lcom/android/music/list/activity/MpListActivity;->overridePendingTransition(II)V

    .line 1343
    :goto_0
    return-void

    .line 1336
    :cond_0
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity$2;->this$0:Lcom/android/music/list/activity/MpListActivity;

    invoke-virtual {v1, v0}, Lcom/android/music/list/activity/MpListActivity;->startActivity(Landroid/content/Intent;)V

    .line 1339
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity$2;->this$0:Lcom/android/music/list/activity/MpListActivity;

    const v1, 0x7f040008

    const v2, 0x7f040009

    invoke-virtual {v0, v1, v2}, Lcom/android/music/list/activity/MpListActivity;->overridePendingTransition(II)V

    goto :goto_0
.end method
