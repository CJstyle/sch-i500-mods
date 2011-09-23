.class Lcom/android/browser/BrowserActivity$8;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BrowserActivity;->createBrightPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private brightness:I

.field final synthetic this$0:Lcom/android/browser/BrowserActivity;

.field final synthetic val$tempbright:I


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserActivity;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 946
    iput-object p1, p0, Lcom/android/browser/BrowserActivity$8;->this$0:Lcom/android/browser/BrowserActivity;

    iput p2, p0, Lcom/android/browser/BrowserActivity$8;->val$tempbright:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 945
    iget v0, p0, Lcom/android/browser/BrowserActivity$8;->val$tempbright:I

    iput v0, p0, Lcom/android/browser/BrowserActivity$8;->brightness:I

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 948
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$8;->this$0:Lcom/android/browser/BrowserActivity;

    iget v1, p0, Lcom/android/browser/BrowserActivity$8;->brightness:I

    invoke-static {v0, v1}, Lcom/android/browser/BrowserActivity;->access$500(Lcom/android/browser/BrowserActivity;I)V

    .line 949
    return-void
.end method
