.class Lcom/android/browser/BrowserDownloadDefaultStoragePreference$2;
.super Ljava/lang/Object;
.source "BrowserDownloadDefaultStoragePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BrowserDownloadDefaultStoragePreference;->onCreateDialogView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BrowserDownloadDefaultStoragePreference;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserDownloadDefaultStoragePreference;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/browser/BrowserDownloadDefaultStoragePreference$2;->this$0:Lcom/android/browser/BrowserDownloadDefaultStoragePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/browser/BrowserDownloadDefaultStoragePreference$2;->this$0:Lcom/android/browser/BrowserDownloadDefaultStoragePreference;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/browser/BrowserDownloadDefaultStoragePreference;->access$002(Lcom/android/browser/BrowserDownloadDefaultStoragePreference;Z)Z

    .line 124
    iget-object v0, p0, Lcom/android/browser/BrowserDownloadDefaultStoragePreference$2;->this$0:Lcom/android/browser/BrowserDownloadDefaultStoragePreference;

    invoke-static {v0}, Lcom/android/browser/BrowserDownloadDefaultStoragePreference;->access$100(Lcom/android/browser/BrowserDownloadDefaultStoragePreference;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "user select INTERNAL memory to default storage"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return-void
.end method
