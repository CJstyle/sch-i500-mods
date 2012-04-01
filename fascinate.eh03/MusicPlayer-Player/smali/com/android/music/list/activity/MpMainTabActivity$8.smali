.class Lcom/android/music/list/activity/MpMainTabActivity$8;
.super Ljava/lang/Object;
.source "MpMainTabActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/list/activity/MpMainTabActivity;->createTabContent(Ljava/lang/String;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/list/activity/MpMainTabActivity;


# direct methods
.method constructor <init>(Lcom/android/music/list/activity/MpMainTabActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2056
    iput-object p1, p0, Lcom/android/music/list/activity/MpMainTabActivity$8;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 2059
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity$8;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    const-class v2, Lcom/android/music/player/activity/MusicPlayer;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2060
    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2061
    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity$8;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-virtual {v1, v0}, Lcom/android/music/list/activity/MpMainTabActivity;->startActivity(Landroid/content/Intent;)V

    .line 2062
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity$8;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    const v1, 0x7f040006

    const v2, 0x7f040007

    invoke-virtual {v0, v1, v2}, Lcom/android/music/list/activity/MpMainTabActivity;->overridePendingTransition(II)V

    .line 2064
    return-void
.end method
