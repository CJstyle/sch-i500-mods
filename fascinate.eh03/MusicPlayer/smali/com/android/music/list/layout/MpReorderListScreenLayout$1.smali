.class Lcom/android/music/list/layout/MpReorderListScreenLayout$1;
.super Ljava/lang/Object;
.source "MpReorderListScreenLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/list/layout/MpReorderListScreenLayout;->setTitleDisplay(Lcom/android/music/list/data/LayoutData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/list/layout/MpReorderListScreenLayout;


# direct methods
.method constructor <init>(Lcom/android/music/list/layout/MpReorderListScreenLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/music/list/layout/MpReorderListScreenLayout$1;->this$0:Lcom/android/music/list/layout/MpReorderListScreenLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/music/list/layout/MpReorderListScreenLayout$1;->this$0:Lcom/android/music/list/layout/MpReorderListScreenLayout;

    invoke-static {v0}, Lcom/android/music/list/layout/MpReorderListScreenLayout;->access$000(Lcom/android/music/list/layout/MpReorderListScreenLayout;)Landroid/content/Context;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/list/activity/MpListReorderActivity;

    invoke-virtual {p0}, Lcom/android/music/list/activity/MpListReorderActivity;->finish()V

    .line 85
    return-void
.end method
