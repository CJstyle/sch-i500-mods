.class Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$2$1;
.super Ljava/lang/Object;
.source "MpThumnailOneEditTitleScreenLayout.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$2;


# direct methods
.method constructor <init>(Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$2;)V
    .locals 0
    .parameter

    .prologue
    .line 407
    iput-object p1, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$2$1;->this$1:Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 410
    if-nez p2, :cond_1

    .line 411
    iget-object v0, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$2$1;->this$1:Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$2;

    invoke-virtual {v0}, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$2;->Camera()V

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 412
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 413
    iget-object v0, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$2$1;->this$1:Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$2;

    invoke-virtual {v0}, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$2;->MyFiles()V

    goto :goto_0

    .line 414
    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$2$1;->this$1:Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$2;

    invoke-virtual {v0}, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$2;->Delete()V

    goto :goto_0
.end method
