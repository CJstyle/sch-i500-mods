.class Lcom/nemustech/tiffany/world/TFEffect$16;
.super Ljava/lang/Object;
.source "TFEffect.java"

# interfaces
.implements Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemustech/tiffany/world/TFEffect;->showEffectVerticalPageOver(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemustech/tiffany/world/TFEffect;

.field final synthetic val$current_up_panel:Lcom/nemustech/tiffany/world/TFPanel;

.field final synthetic val$horizontalAxis:Lcom/nemustech/tiffany/world/TFHorizontalAxisHolder;

.field final synthetic val$next_down_panel:Lcom/nemustech/tiffany/world/TFPanel;

.field final synthetic val$rotate_panel:Lcom/nemustech/tiffany/world/TFPanel;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/world/TFEffect;Lcom/nemustech/tiffany/world/TFPanel;Lcom/nemustech/tiffany/world/TFPanel;Lcom/nemustech/tiffany/world/TFPanel;Lcom/nemustech/tiffany/world/TFHorizontalAxisHolder;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1409
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFEffect$16;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    iput-object p2, p0, Lcom/nemustech/tiffany/world/TFEffect$16;->val$rotate_panel:Lcom/nemustech/tiffany/world/TFPanel;

    iput-object p3, p0, Lcom/nemustech/tiffany/world/TFEffect$16;->val$current_up_panel:Lcom/nemustech/tiffany/world/TFPanel;

    iput-object p4, p0, Lcom/nemustech/tiffany/world/TFEffect$16;->val$next_down_panel:Lcom/nemustech/tiffany/world/TFPanel;

    iput-object p5, p0, Lcom/nemustech/tiffany/world/TFEffect$16;->val$horizontalAxis:Lcom/nemustech/tiffany/world/TFHorizontalAxisHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEffectFinish(Lcom/nemustech/tiffany/world/TFObject;)V
    .locals 6
    .parameter "object"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1411
    const/4 v2, 0x3

    new-array v0, v2, [Lcom/nemustech/tiffany/world/TFModel;

    .line 1412
    .local v0, modelsToDelete:[Lcom/nemustech/tiffany/world/TFModel;
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFEffect$16;->val$rotate_panel:Lcom/nemustech/tiffany/world/TFPanel;

    aput-object v3, v0, v2

    .line 1413
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect$16;->val$current_up_panel:Lcom/nemustech/tiffany/world/TFPanel;

    aput-object v2, v0, v5

    .line 1414
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFEffect$16;->val$next_down_panel:Lcom/nemustech/tiffany/world/TFPanel;

    aput-object v3, v0, v2

    .line 1416
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect$16;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v2}, Lcom/nemustech/tiffany/world/TFEffect;->access$100(Lcom/nemustech/tiffany/world/TFEffect;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1417
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect$16;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v2, v0}, Lcom/nemustech/tiffany/world/TFEffect;->access$2000(Lcom/nemustech/tiffany/world/TFEffect;[Lcom/nemustech/tiffany/world/TFModel;)V

    .line 1431
    :goto_0
    return-void

    .line 1419
    :cond_0
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect$16;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v2}, Lcom/nemustech/tiffany/world/TFEffect;->access$1800(Lcom/nemustech/tiffany/world/TFEffect;)I

    move-result v2

    if-nez v2, :cond_1

    .line 1420
    const/high16 v1, 0x3e80

    .line 1421
    .local v1, reboundSpeed:F
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect$16;->val$horizontalAxis:Lcom/nemustech/tiffany/world/TFHorizontalAxisHolder;

    const/high16 v3, -0x3e60

    invoke-virtual {v2, v4, v3, v1}, Lcom/nemustech/tiffany/world/TFHorizontalAxisHolder;->rotate(FFF)V

    .line 1422
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect$16;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v2}, Lcom/nemustech/tiffany/world/TFEffect;->access$1808(Lcom/nemustech/tiffany/world/TFEffect;)I

    goto :goto_0

    .line 1423
    .end local v1           #reboundSpeed:F
    :cond_1
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect$16;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v2}, Lcom/nemustech/tiffany/world/TFEffect;->access$1800(Lcom/nemustech/tiffany/world/TFEffect;)I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 1424
    const/high16 v1, 0x3e80

    .line 1425
    .restart local v1       #reboundSpeed:F
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect$16;->val$horizontalAxis:Lcom/nemustech/tiffany/world/TFHorizontalAxisHolder;

    const/high16 v3, 0x41a0

    invoke-virtual {v2, v4, v3, v1}, Lcom/nemustech/tiffany/world/TFHorizontalAxisHolder;->rotate(FFF)V

    .line 1426
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect$16;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v2}, Lcom/nemustech/tiffany/world/TFEffect;->access$1808(Lcom/nemustech/tiffany/world/TFEffect;)I

    goto :goto_0

    .line 1428
    .end local v1           #reboundSpeed:F
    :cond_2
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect$16;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v2, v0}, Lcom/nemustech/tiffany/world/TFEffect;->access$2000(Lcom/nemustech/tiffany/world/TFEffect;[Lcom/nemustech/tiffany/world/TFModel;)V

    goto :goto_0
.end method
