.class Lcom/android/mms/ui/AttachmentListAdapter$1;
.super Ljava/lang/Object;
.source "AttachmentListAdapter.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/AttachmentListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/AttachmentListAdapter;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/AttachmentListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/mms/ui/AttachmentListAdapter$1;->this$0:Lcom/android/mms/ui/AttachmentListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 54
    :goto_0
    return v0

    .line 49
    :cond_0
    const/16 v0, 0x43

    if-ne p2, v0, :cond_1

    .line 51
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 54
    goto :goto_0
.end method
