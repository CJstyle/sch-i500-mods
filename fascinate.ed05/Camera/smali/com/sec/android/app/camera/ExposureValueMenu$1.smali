.class Lcom/sec/android/app/camera/ExposureValueMenu$1;
.super Ljava/lang/Object;
.source "ExposureValueMenu.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/ExposureValueMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/ExposureValueMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/ExposureValueMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/sec/android/app/camera/ExposureValueMenu$1;->this$0:Lcom/sec/android/app/camera/ExposureValueMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    const/high16 v4, 0x3f00

    .line 125
    if-ltz p2, :cond_0

    const/16 v0, 0x8

    if-le p2, v0, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu$1;->this$0:Lcom/sec/android/app/camera/ExposureValueMenu;

    const/4 v1, 0x4

    sub-int v1, p2, v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/ExposureValueMenu;->access$402(Lcom/sec/android/app/camera/ExposureValueMenu;I)I

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu$1;->this$0:Lcom/sec/android/app/camera/ExposureValueMenu;

    iget-object v1, p0, Lcom/sec/android/app/camera/ExposureValueMenu$1;->this$0:Lcom/sec/android/app/camera/ExposureValueMenu;

    invoke-static {v1}, Lcom/sec/android/app/camera/ExposureValueMenu;->access$500(Lcom/sec/android/app/camera/ExposureValueMenu;)Landroid/widget/SeekBar;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/ExposureValueMenu$1;->this$0:Lcom/sec/android/app/camera/ExposureValueMenu;

    invoke-static {v2}, Lcom/sec/android/app/camera/ExposureValueMenu;->access$600(Lcom/sec/android/app/camera/ExposureValueMenu;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/ExposureValueMenu$1;->this$0:Lcom/sec/android/app/camera/ExposureValueMenu;

    invoke-static {v3}, Lcom/sec/android/app/camera/ExposureValueMenu;->access$400(Lcom/sec/android/app/camera/ExposureValueMenu;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/ExposureValueMenu;->access$700(Lcom/sec/android/app/camera/ExposureValueMenu;Landroid/widget/SeekBar;Landroid/widget/TextView;F)V

    .line 130
    iget-object v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu$1;->this$0:Lcom/sec/android/app/camera/ExposureValueMenu;

    iget-object v1, p0, Lcom/sec/android/app/camera/ExposureValueMenu$1;->this$0:Lcom/sec/android/app/camera/ExposureValueMenu;

    invoke-static {v1}, Lcom/sec/android/app/camera/ExposureValueMenu;->access$500(Lcom/sec/android/app/camera/ExposureValueMenu;)Landroid/widget/SeekBar;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/ExposureValueMenu$1;->this$0:Lcom/sec/android/app/camera/ExposureValueMenu;

    invoke-static {v2}, Lcom/sec/android/app/camera/ExposureValueMenu;->access$400(Lcom/sec/android/app/camera/ExposureValueMenu;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/ExposureValueMenu;->access$800(Lcom/sec/android/app/camera/ExposureValueMenu;Landroid/widget/SeekBar;F)V

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu$1;->this$0:Lcom/sec/android/app/camera/ExposureValueMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/ExposureValueMenu;->mOnExposureValueChangedListener:Lcom/sec/android/app/camera/ExposureValueMenu$OnExposureValueChangedListener;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu$1;->this$0:Lcom/sec/android/app/camera/ExposureValueMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/ExposureValueMenu;->mOnExposureValueChangedListener:Lcom/sec/android/app/camera/ExposureValueMenu$OnExposureValueChangedListener;

    iget-object v1, p0, Lcom/sec/android/app/camera/ExposureValueMenu$1;->this$0:Lcom/sec/android/app/camera/ExposureValueMenu;

    invoke-static {v1}, Lcom/sec/android/app/camera/ExposureValueMenu;->access$400(Lcom/sec/android/app/camera/ExposureValueMenu;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/ExposureValueMenu$OnExposureValueChangedListener;->onExposureValueChanged(I)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .parameter "seekBar"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu$1;->this$0:Lcom/sec/android/app/camera/ExposureValueMenu;

    invoke-static {v0}, Lcom/sec/android/app/camera/ExposureValueMenu;->access$900(Lcom/sec/android/app/camera/ExposureValueMenu;)V

    .line 138
    iget-object v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu$1;->this$0:Lcom/sec/android/app/camera/ExposureValueMenu;

    invoke-static {v0}, Lcom/sec/android/app/camera/ExposureValueMenu;->access$600(Lcom/sec/android/app/camera/ExposureValueMenu;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu$1;->this$0:Lcom/sec/android/app/camera/ExposureValueMenu;

    iget-object v1, p0, Lcom/sec/android/app/camera/ExposureValueMenu$1;->this$0:Lcom/sec/android/app/camera/ExposureValueMenu;

    invoke-static {v1}, Lcom/sec/android/app/camera/ExposureValueMenu;->access$500(Lcom/sec/android/app/camera/ExposureValueMenu;)Landroid/widget/SeekBar;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/ExposureValueMenu$1;->this$0:Lcom/sec/android/app/camera/ExposureValueMenu;

    invoke-static {v2}, Lcom/sec/android/app/camera/ExposureValueMenu;->access$400(Lcom/sec/android/app/camera/ExposureValueMenu;)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f00

    mul-float/2addr v2, v3

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/ExposureValueMenu;->access$800(Lcom/sec/android/app/camera/ExposureValueMenu;Landroid/widget/SeekBar;F)V

    .line 140
    iget-object v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu$1;->this$0:Lcom/sec/android/app/camera/ExposureValueMenu;

    invoke-static {v0}, Lcom/sec/android/app/camera/ExposureValueMenu;->access$1000(Lcom/sec/android/app/camera/ExposureValueMenu;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 141
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "seekBar"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu$1;->this$0:Lcom/sec/android/app/camera/ExposureValueMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ExposureValueMenu;->startExposureValueMenuTimer()V

    .line 145
    iget-object v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu$1;->this$0:Lcom/sec/android/app/camera/ExposureValueMenu;

    invoke-static {v0}, Lcom/sec/android/app/camera/ExposureValueMenu;->access$600(Lcom/sec/android/app/camera/ExposureValueMenu;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/sec/android/app/camera/ExposureValueMenu$1;->this$0:Lcom/sec/android/app/camera/ExposureValueMenu;

    invoke-static {v0}, Lcom/sec/android/app/camera/ExposureValueMenu;->access$1000(Lcom/sec/android/app/camera/ExposureValueMenu;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 148
    return-void
.end method
