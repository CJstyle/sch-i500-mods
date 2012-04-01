.class Lcom/sec/android/app/dialertab/dialer/DialerActivity$keyHandler;
.super Landroid/os/Handler;
.source "DialerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/dialer/DialerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "keyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/dialer/DialerActivity;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/dialertab/dialer/DialerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1835
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$keyHandler;->this$0:Lcom/sec/android/app/dialertab/dialer/DialerActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/dialertab/dialer/DialerActivity;Lcom/sec/android/app/dialertab/dialer/DialerActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1835
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$keyHandler;-><init>(Lcom/sec/android/app/dialertab/dialer/DialerActivity;)V

    return-void
.end method


# virtual methods
.method public SpeedDialParser(JLandroid/os/Message;)V
    .locals 11
    .parameter "key"
    .parameter "msg"

    .prologue
    const-wide/16 v9, 0xa

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1907
    invoke-static {}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$700()Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$700()Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 1910
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$700()Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1917
    :cond_0
    invoke-static {}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$700()Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->length()I

    move-result v1

    .line 1918
    .local v1, i:I
    if-nez v1, :cond_2

    .line 1920
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$keyHandler;->this$0:Lcom/sec/android/app/dialertab/dialer/DialerActivity;

    iget-object v5, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$keyHandler;->this$0:Lcom/sec/android/app/dialertab/dialer/DialerActivity;

    invoke-static {v5, p1, p2, v7}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$1100(Lcom/sec/android/app/dialertab/dialer/DialerActivity;JZ)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$1200(Lcom/sec/android/app/dialertab/dialer/DialerActivity;Ljava/lang/String;)V

    .line 1921
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$keyHandler;->this$0:Lcom/sec/android/app/dialertab/dialer/DialerActivity;

    invoke-static {}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$600()[I

    move-result-object v5

    iget v6, p3, Landroid/os/Message;->arg1:I

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setPressed(Z)V

    .line 1922
    invoke-static {v8}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$902(Z)Z

    .line 1948
    .end local v1           #i:I
    :cond_1
    :goto_0
    return-void

    .line 1912
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 1913
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0

    .line 1924
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #i:I
    :cond_2
    if-ne v1, v8, :cond_3

    .line 1926
    invoke-static {}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$700()Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1928
    .local v2, lo:J
    mul-long/2addr v2, v9

    .line 1929
    add-long/2addr p1, v2

    .line 1931
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$keyHandler;->this$0:Lcom/sec/android/app/dialertab/dialer/DialerActivity;

    iget-object v5, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$keyHandler;->this$0:Lcom/sec/android/app/dialertab/dialer/DialerActivity;

    invoke-static {v5, p1, p2, v7}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$1100(Lcom/sec/android/app/dialertab/dialer/DialerActivity;JZ)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$1200(Lcom/sec/android/app/dialertab/dialer/DialerActivity;Ljava/lang/String;)V

    .line 1932
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$keyHandler;->this$0:Lcom/sec/android/app/dialertab/dialer/DialerActivity;

    invoke-static {}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$600()[I

    move-result-object v5

    iget v6, p3, Landroid/os/Message;->arg1:I

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setPressed(Z)V

    .line 1933
    invoke-static {v8}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$902(Z)Z

    goto :goto_0

    .line 1935
    .end local v2           #lo:J
    :cond_3
    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 1937
    invoke-static {}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$700()Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1938
    .restart local v2       #lo:J
    cmp-long v4, v2, v9

    if-nez v4, :cond_1

    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-nez v4, :cond_1

    .line 1940
    mul-long/2addr v2, v9

    .line 1941
    add-long/2addr p1, v2

    .line 1943
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$keyHandler;->this$0:Lcom/sec/android/app/dialertab/dialer/DialerActivity;

    iget-object v5, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$keyHandler;->this$0:Lcom/sec/android/app/dialertab/dialer/DialerActivity;

    invoke-static {v5, p1, p2, v7}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$1100(Lcom/sec/android/app/dialertab/dialer/DialerActivity;JZ)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$1200(Lcom/sec/android/app/dialertab/dialer/DialerActivity;Ljava/lang/String;)V

    .line 1944
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$keyHandler;->this$0:Lcom/sec/android/app/dialertab/dialer/DialerActivity;

    invoke-static {}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$600()[I

    move-result-object v5

    iget v6, p3, Landroid/os/Message;->arg1:I

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setPressed(Z)V

    .line 1945
    invoke-static {v8}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$902(Z)Z

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 1837
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1901
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1839
    :pswitch_0
    invoke-static {}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$600()[I

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 1903
    :goto_0
    :pswitch_1
    return-void

    .line 1841
    :pswitch_2
    invoke-static {}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$700()Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 1845
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$keyHandler;->this$0:Lcom/sec/android/app/dialertab/dialer/DialerActivity;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$800(Lcom/sec/android/app/dialertab/dialer/DialerActivity;)V

    .line 1846
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$keyHandler;->this$0:Lcom/sec/android/app/dialertab/dialer/DialerActivity;

    invoke-static {}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$600()[I

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 1847
    invoke-static {v3}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$902(Z)Z

    goto :goto_0

    .line 1851
    :cond_0
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$keyHandler;->SpeedDialParser(JLandroid/os/Message;)V

    goto :goto_0

    .line 1856
    :pswitch_3
    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1, p1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$keyHandler;->SpeedDialParser(JLandroid/os/Message;)V

    goto :goto_0

    .line 1859
    :pswitch_4
    const-wide/16 v0, 0x3

    invoke-virtual {p0, v0, v1, p1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$keyHandler;->SpeedDialParser(JLandroid/os/Message;)V

    goto :goto_0

    .line 1862
    :pswitch_5
    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1, p1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$keyHandler;->SpeedDialParser(JLandroid/os/Message;)V

    goto :goto_0

    .line 1865
    :pswitch_6
    const-wide/16 v0, 0x5

    invoke-virtual {p0, v0, v1, p1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$keyHandler;->SpeedDialParser(JLandroid/os/Message;)V

    goto :goto_0

    .line 1868
    :pswitch_7
    const-wide/16 v0, 0x6

    invoke-virtual {p0, v0, v1, p1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$keyHandler;->SpeedDialParser(JLandroid/os/Message;)V

    goto :goto_0

    .line 1871
    :pswitch_8
    const-wide/16 v0, 0x7

    invoke-virtual {p0, v0, v1, p1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$keyHandler;->SpeedDialParser(JLandroid/os/Message;)V

    goto :goto_0

    .line 1874
    :pswitch_9
    const-wide/16 v0, 0x8

    invoke-virtual {p0, v0, v1, p1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$keyHandler;->SpeedDialParser(JLandroid/os/Message;)V

    goto :goto_0

    .line 1877
    :pswitch_a
    const-wide/16 v0, 0x9

    invoke-virtual {p0, v0, v1, p1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$keyHandler;->SpeedDialParser(JLandroid/os/Message;)V

    goto :goto_0

    .line 1886
    :pswitch_b
    invoke-static {}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$700()Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 1887
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$keyHandler;->this$0:Lcom/sec/android/app/dialertab/dialer/DialerActivity;

    const/16 v1, 0x51

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$1000(Lcom/sec/android/app/dialertab/dialer/DialerActivity;I)V

    .line 1888
    invoke-static {v3}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$902(Z)Z

    goto :goto_0

    .line 1892
    :cond_1
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$keyHandler;->SpeedDialParser(JLandroid/os/Message;)V

    goto :goto_0

    .line 1837
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1839
    :pswitch_data_1
    .packed-switch 0x7f06007a
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_1
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_1
        :pswitch_1
        :pswitch_b
    .end packed-switch
.end method
