.class Lcom/android/browser/BrowserActivity$9;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BrowserActivity;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 981
    iput-object p1, p0, Lcom/android/browser/BrowserActivity$9;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .parameter "seek"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 975
    if-eqz p3, :cond_0

    .line 977
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$9;->this$0:Lcom/android/browser/BrowserActivity;

    mul-int/lit8 v1, p2, 0xa

    invoke-static {v0, v1}, Lcom/android/browser/BrowserActivity;->access$500(Lcom/android/browser/BrowserActivity;I)V

    .line 979
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seek"

    .prologue
    .line 980
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seek"

    .prologue
    .line 981
    return-void
.end method
