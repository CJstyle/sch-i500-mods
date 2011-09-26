.class Lcom/android/mms/ui/SlideshowActivity$DrmOkListener;
.super Ljava/lang/Object;
.source "SlideshowActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideshowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrmOkListener"
.end annotation


# instance fields
.field mDrmFileNames:[Ljava/lang/String;

.field mDrmFilePaths:[Ljava/lang/String;

.field final synthetic this$0:Lcom/android/mms/ui/SlideshowActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideshowActivity;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter "drmFilePaths"
    .parameter "drmFileName"
    .parameter "callback"

    .prologue
    .line 1162
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowActivity$DrmOkListener;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1163
    iput-object p2, p0, Lcom/android/mms/ui/SlideshowActivity$DrmOkListener;->mDrmFilePaths:[Ljava/lang/String;

    .line 1164
    iput-object p3, p0, Lcom/android/mms/ui/SlideshowActivity$DrmOkListener;->mDrmFileNames:[Ljava/lang/String;

    .line 1165
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const-string v2, "Mms/SlideshowActivity"

    .line 1169
    const-string v0, "Mms/SlideshowActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DrmOkListener : DRM filepath ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$DrmOkListener;->mDrmFilePaths:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    const-string v0, "Mms/SlideshowActivity"

    const-string v0, "DrmOkListener : StartActivity DrmContentsActivity.class"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$DrmOkListener;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    const-class v2, Lcom/android/mms/ui/DrmContentsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1172
    const-string v1, "drmFilePath"

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity$DrmOkListener;->mDrmFilePaths:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1173
    const-string v1, "drmFileName"

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity$DrmOkListener;->mDrmFileNames:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1174
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$DrmOkListener;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/SlideshowActivity;->startActivity(Landroid/content/Intent;)V

    .line 1176
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1177
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$DrmOkListener;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowActivity;->finish()V

    .line 1178
    return-void
.end method
