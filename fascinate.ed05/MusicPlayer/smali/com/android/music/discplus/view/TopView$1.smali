.class Lcom/android/music/discplus/view/TopView$1;
.super Ljava/lang/Object;
.source "TopView.java"

# interfaces
.implements Lcom/android/music/discplus/data/DiscPlusData$DataUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/discplus/view/TopView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/discplus/view/TopView;


# direct methods
.method constructor <init>(Lcom/android/music/discplus/view/TopView;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/music/discplus/view/TopView$1;->this$0:Lcom/android/music/discplus/view/TopView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public end()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 95
    iget-object v0, p0, Lcom/android/music/discplus/view/TopView$1;->this$0:Lcom/android/music/discplus/view/TopView;

    invoke-static {v0}, Lcom/android/music/discplus/view/TopView;->access$200(Lcom/android/music/discplus/view/TopView;)Lcom/android/music/discplus/view/TouchJogDial;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/music/discplus/view/TopView$1;->this$0:Lcom/android/music/discplus/view/TopView;

    invoke-static {v0}, Lcom/android/music/discplus/view/TopView;->access$200(Lcom/android/music/discplus/view/TopView;)Lcom/android/music/discplus/view/TouchJogDial;

    move-result-object v0

    iput-boolean v2, v0, Lcom/android/music/discplus/view/TouchJogDial;->mIsDataChange:Z

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/android/music/discplus/view/TopView$1;->this$0:Lcom/android/music/discplus/view/TopView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/music/discplus/view/TopView;->access$300(Lcom/android/music/discplus/view/TopView;Z)V

    .line 97
    iget-object v0, p0, Lcom/android/music/discplus/view/TopView$1;->this$0:Lcom/android/music/discplus/view/TopView;

    invoke-static {v0, v2}, Lcom/android/music/discplus/view/TopView;->access$102(Lcom/android/music/discplus/view/TopView;Z)Z

    .line 98
    return-void
.end method

.method public isContinued(Z)V
    .locals 4
    .parameter "continued"

    .prologue
    const/16 v3, 0x65

    const/4 v2, 0x0

    .line 71
    iget-object v1, p0, Lcom/android/music/discplus/view/TopView$1;->this$0:Lcom/android/music/discplus/view/TopView;

    invoke-static {v1}, Lcom/android/music/discplus/view/TopView;->access$000(Lcom/android/music/discplus/view/TopView;)I

    move-result v1

    invoke-static {v1}, Lcom/android/music/common/util/ListType;->getDiscPlusViewType(I)I

    move-result v0

    .line 72
    .local v0, viewType:I
    if-nez p1, :cond_2

    if-eq v0, v3, :cond_2

    .line 73
    iget-object v1, p0, Lcom/android/music/discplus/view/TopView$1;->this$0:Lcom/android/music/discplus/view/TopView;

    invoke-static {v1}, Lcom/android/music/discplus/view/TopView;->access$200(Lcom/android/music/discplus/view/TopView;)Lcom/android/music/discplus/view/TouchJogDial;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/music/discplus/view/TopView$1;->this$0:Lcom/android/music/discplus/view/TopView;

    invoke-static {v1}, Lcom/android/music/discplus/view/TopView;->access$200(Lcom/android/music/discplus/view/TopView;)Lcom/android/music/discplus/view/TouchJogDial;

    move-result-object v1

    iput-boolean v2, v1, Lcom/android/music/discplus/view/TouchJogDial;->mIsDataChange:Z

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/android/music/discplus/view/TopView$1;->this$0:Lcom/android/music/discplus/view/TopView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/music/discplus/view/TopView;->access$300(Lcom/android/music/discplus/view/TopView;Z)V

    .line 82
    :cond_1
    :goto_0
    return-void

    .line 78
    :cond_2
    if-ne v0, v3, :cond_1

    .line 79
    iget-object v1, p0, Lcom/android/music/discplus/view/TopView$1;->this$0:Lcom/android/music/discplus/view/TopView;

    invoke-static {v1}, Lcom/android/music/discplus/view/TopView;->access$200(Lcom/android/music/discplus/view/TopView;)Lcom/android/music/discplus/view/TouchJogDial;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/music/discplus/view/TopView$1;->this$0:Lcom/android/music/discplus/view/TopView;

    invoke-static {v1}, Lcom/android/music/discplus/view/TopView;->access$200(Lcom/android/music/discplus/view/TopView;)Lcom/android/music/discplus/view/TouchJogDial;

    move-result-object v1

    iput-boolean v2, v1, Lcom/android/music/discplus/view/TouchJogDial;->mIsDataChange:Z

    .line 80
    :cond_3
    iget-object v1, p0, Lcom/android/music/discplus/view/TopView$1;->this$0:Lcom/android/music/discplus/view/TopView;

    invoke-static {v1, v2}, Lcom/android/music/discplus/view/TopView;->access$300(Lcom/android/music/discplus/view/TopView;Z)V

    goto :goto_0
.end method

.method public start(I)V
    .locals 4
    .parameter "count"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 56
    iget-object v1, p0, Lcom/android/music/discplus/view/TopView$1;->this$0:Lcom/android/music/discplus/view/TopView;

    invoke-static {v1}, Lcom/android/music/discplus/view/TopView;->access$000(Lcom/android/music/discplus/view/TopView;)I

    move-result v1

    invoke-static {v1}, Lcom/android/music/common/util/ListType;->getDiscPlusViewType(I)I

    move-result v0

    .line 57
    .local v0, viewType:I
    const/16 v1, 0x65

    if-ne v0, v1, :cond_3

    .line 58
    iget-object v1, p0, Lcom/android/music/discplus/view/TopView$1;->this$0:Lcom/android/music/discplus/view/TopView;

    invoke-static {v1}, Lcom/android/music/discplus/view/TopView;->access$100(Lcom/android/music/discplus/view/TopView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    iget-object v1, p0, Lcom/android/music/discplus/view/TopView$1;->this$0:Lcom/android/music/discplus/view/TopView;

    invoke-static {v1}, Lcom/android/music/discplus/view/TopView;->access$200(Lcom/android/music/discplus/view/TopView;)Lcom/android/music/discplus/view/TouchJogDial;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/music/discplus/view/TopView$1;->this$0:Lcom/android/music/discplus/view/TopView;

    invoke-static {v1}, Lcom/android/music/discplus/view/TopView;->access$200(Lcom/android/music/discplus/view/TopView;)Lcom/android/music/discplus/view/TouchJogDial;

    move-result-object v1

    iput-boolean v2, v1, Lcom/android/music/discplus/view/TouchJogDial;->mIsDataChange:Z

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/android/music/discplus/view/TopView$1;->this$0:Lcom/android/music/discplus/view/TopView;

    invoke-static {v1, v3}, Lcom/android/music/discplus/view/TopView;->access$300(Lcom/android/music/discplus/view/TopView;Z)V

    .line 61
    iget-object v1, p0, Lcom/android/music/discplus/view/TopView$1;->this$0:Lcom/android/music/discplus/view/TopView;

    invoke-static {v1, v2}, Lcom/android/music/discplus/view/TopView;->access$102(Lcom/android/music/discplus/view/TopView;Z)Z

    .line 64
    :cond_1
    iget-object v1, p0, Lcom/android/music/discplus/view/TopView$1;->this$0:Lcom/android/music/discplus/view/TopView;

    invoke-static {v1}, Lcom/android/music/discplus/view/TopView;->access$200(Lcom/android/music/discplus/view/TopView;)Lcom/android/music/discplus/view/TouchJogDial;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/music/discplus/view/TopView$1;->this$0:Lcom/android/music/discplus/view/TopView;

    invoke-static {v1}, Lcom/android/music/discplus/view/TopView;->access$200(Lcom/android/music/discplus/view/TopView;)Lcom/android/music/discplus/view/TouchJogDial;

    move-result-object v1

    iput-boolean v2, v1, Lcom/android/music/discplus/view/TouchJogDial;->mIsDataChange:Z

    .line 65
    :cond_2
    iget-object v1, p0, Lcom/android/music/discplus/view/TopView$1;->this$0:Lcom/android/music/discplus/view/TopView;

    invoke-static {v1, v2}, Lcom/android/music/discplus/view/TopView;->access$300(Lcom/android/music/discplus/view/TopView;Z)V

    .line 66
    iget-object v1, p0, Lcom/android/music/discplus/view/TopView$1;->this$0:Lcom/android/music/discplus/view/TopView;

    invoke-static {v1, v3}, Lcom/android/music/discplus/view/TopView;->access$102(Lcom/android/music/discplus/view/TopView;Z)Z

    .line 68
    :cond_3
    return-void
.end method

.method public update()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 85
    iget-object v1, p0, Lcom/android/music/discplus/view/TopView$1;->this$0:Lcom/android/music/discplus/view/TopView;

    invoke-virtual {v1}, Lcom/android/music/discplus/view/TopView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 86
    iget-object v1, p0, Lcom/android/music/discplus/view/TopView$1;->this$0:Lcom/android/music/discplus/view/TopView;

    invoke-static {v1}, Lcom/android/music/discplus/view/TopView;->access$000(Lcom/android/music/discplus/view/TopView;)I

    move-result v1

    invoke-static {v1}, Lcom/android/music/common/util/ListType;->getDiscPlusViewType(I)I

    move-result v0

    .line 87
    .local v0, viewType:I
    const/16 v1, 0x65

    if-ne v0, v1, :cond_1

    .line 88
    iget-object v1, p0, Lcom/android/music/discplus/view/TopView$1;->this$0:Lcom/android/music/discplus/view/TopView;

    invoke-static {v1}, Lcom/android/music/discplus/view/TopView;->access$200(Lcom/android/music/discplus/view/TopView;)Lcom/android/music/discplus/view/TouchJogDial;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/music/discplus/view/TopView$1;->this$0:Lcom/android/music/discplus/view/TopView;

    invoke-static {v1}, Lcom/android/music/discplus/view/TopView;->access$200(Lcom/android/music/discplus/view/TopView;)Lcom/android/music/discplus/view/TouchJogDial;

    move-result-object v1

    iput-boolean v2, v1, Lcom/android/music/discplus/view/TouchJogDial;->mIsDataChange:Z

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/android/music/discplus/view/TopView$1;->this$0:Lcom/android/music/discplus/view/TopView;

    invoke-static {v1, v2}, Lcom/android/music/discplus/view/TopView;->access$300(Lcom/android/music/discplus/view/TopView;Z)V

    .line 92
    .end local v0           #viewType:I
    :cond_1
    return-void
.end method
