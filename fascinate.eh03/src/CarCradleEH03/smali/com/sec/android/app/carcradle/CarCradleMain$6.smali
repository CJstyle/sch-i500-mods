.class Lcom/sec/android/app/carcradle/CarCradleMain$6;
.super Ljava/lang/Object;
.source "CarCradleMain.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/carcradle/CarCradleMain;->updateSpeaker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/carcradle/CarCradleMain;


# direct methods
.method constructor <init>(Lcom/sec/android/app/carcradle/CarCradleMain;)V
    .locals 0
    .parameter

    .prologue
    .line 395
    iput-object p1, p0, Lcom/sec/android/app/carcradle/CarCradleMain$6;->this$0:Lcom/sec/android/app/carcradle/CarCradleMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 397
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 398
    return-void
.end method
