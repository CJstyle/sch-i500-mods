.class Lcom/android/music/list/view/MpListGridView$1$1;
.super Ljava/lang/Object;
.source "MpListGridView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/list/view/MpListGridView$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/music/list/view/MpListGridView$1;


# direct methods
.method constructor <init>(Lcom/android/music/list/view/MpListGridView$1;)V
    .locals 0
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/music/list/view/MpListGridView$1$1;->this$1:Lcom/android/music/list/view/MpListGridView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 217
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 218
    return-void
.end method
