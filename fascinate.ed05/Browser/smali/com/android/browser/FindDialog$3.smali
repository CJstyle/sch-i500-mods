.class Lcom/android/browser/FindDialog$3;
.super Ljava/lang/Object;
.source "FindDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/FindDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/FindDialog;


# direct methods
.method constructor <init>(Lcom/android/browser/FindDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/browser/FindDialog$3;->this$0:Lcom/android/browser/FindDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/browser/FindDialog$3;->this$0:Lcom/android/browser/FindDialog;

    invoke-static {v0}, Lcom/android/browser/FindDialog;->access$100(Lcom/android/browser/FindDialog;)Lcom/android/browser/BrowserActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/browser/BrowserActivity;->orien:I

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/browser/FindDialog$3;->this$0:Lcom/android/browser/FindDialog;

    invoke-static {v0}, Lcom/android/browser/FindDialog;->access$100(Lcom/android/browser/FindDialog;)Lcom/android/browser/BrowserActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/BrowserActivity;->hideFakeTitleBar()V

    .line 68
    :cond_0
    return-void
.end method
