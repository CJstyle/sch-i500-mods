.class Lcom/android/music/list/activity/MpListActivity$15;
.super Ljava/lang/Object;
.source "MpListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/list/activity/MpListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z
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
    .line 2204
    iput-object p1, p0, Lcom/android/music/list/activity/MpListActivity$15;->this$0:Lcom/android/music/list/activity/MpListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 2205
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 2206
    return-void
.end method
