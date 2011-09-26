.class final Lcom/android/mms/transaction/TransactionService$ServiceHandler;
.super Landroid/os/Handler;
.source "TransactionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/TransactionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/TransactionService;


# direct methods
.method public constructor <init>(Lcom/android/mms/transaction/TransactionService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 608
    iput-object p1, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    .line 609
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 610
    return-void
.end method

.method private processPendingTransaction(Lcom/android/mms/transaction/Transaction;Lcom/android/mms/transaction/TransactionSettings;)V
    .locals 8
    .parameter "transaction"
    .parameter "settings"

    .prologue
    const-string v7, "Mms:transaction"

    .line 851
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 852
    const-string v4, "Mms:transaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processPendingTxn: transaction="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    :cond_0
    const/4 v2, 0x0

    .line 856
    .local v2, numProcessTransaction:I
    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-static {v4}, Lcom/android/mms/transaction/TransactionService;->access$200(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v5

    monitor-enter v5

    .line 857
    :try_start_0
    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-static {v4}, Lcom/android/mms/transaction/TransactionService;->access$400(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_1

    .line 858
    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-static {v4}, Lcom/android/mms/transaction/TransactionService;->access$400(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/mms/transaction/Transaction;

    move-object p1, v0

    .line 860
    :cond_1
    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-static {v4}, Lcom/android/mms/transaction/TransactionService;->access$200(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 861
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 863
    if-eqz p1, :cond_6

    .line 864
    if-eqz p2, :cond_2

    .line 865
    invoke-virtual {p1, p2}, Lcom/android/mms/transaction/Transaction;->setConnectionSettings(Lcom/android/mms/transaction/TransactionSettings;)V

    .line 872
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->getServiceId()I

    move-result v3

    .line 874
    .local v3, serviceId:I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 875
    const-string v4, "Mms:transaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processPendingTxn: process "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->processTransaction(Lcom/android/mms/transaction/Transaction;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 879
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 880
    const-string v4, "Mms:transaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Started deferred processing of transaction  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 898
    .end local v3           #serviceId:I
    :cond_4
    :goto_0
    return-void

    .line 861
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 884
    .restart local v3       #serviceId:I
    :cond_5
    const/4 p1, 0x0

    .line 885
    :try_start_3
    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v4, v3}, Lcom/android/mms/transaction/TransactionService;->stopSelf(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 887
    .end local v3           #serviceId:I
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 888
    .local v1, e:Ljava/io/IOException;
    const-string v4, "Mms:transaction"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 891
    .end local v1           #e:Ljava/io/IOException;
    :cond_6
    if-nez v2, :cond_4

    .line 892
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 893
    const-string v4, "Mms:transaction"

    const-string v4, "processPendingTxn: no more transaction, endMmsConnectivity"

    invoke-static {v7, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    :cond_7
    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V

    goto :goto_0
.end method

.method private processTransaction(Lcom/android/mms/transaction/Transaction;)Z
    .locals 12
    .parameter "transaction"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const-string v11, "Mms:transaction"

    .line 910
    iget-object v6, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-static {v6}, Lcom/android/mms/transaction/TransactionService;->access$200(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v6

    monitor-enter v6

    .line 911
    :try_start_0
    iget-object v7, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-static {v7}, Lcom/android/mms/transaction/TransactionService;->access$400(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/transaction/Transaction;

    .line 912
    .local v5, t:Lcom/android/mms/transaction/Transaction;
    invoke-virtual {v5, p1}, Lcom/android/mms/transaction/Transaction;->isEquivalent(Lcom/android/mms/transaction/Transaction;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 913
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 914
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 915
    .local v4, s:Ljava/lang/StringBuffer;
    const-string v7, "Mms:transaction"

    const-string v8, "Transaction already pending: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->getServiceId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    .end local v4           #s:Ljava/lang/StringBuffer;
    :cond_1
    monitor-exit v6

    move v6, v10

    .line 981
    .end local v5           #t:Lcom/android/mms/transaction/Transaction;
    :goto_0
    return v6

    .line 921
    :cond_2
    iget-object v7, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-static {v7}, Lcom/android/mms/transaction/TransactionService;->access$200(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/transaction/Transaction;

    .line 922
    .restart local v5       #t:Lcom/android/mms/transaction/Transaction;
    invoke-virtual {v5, p1}, Lcom/android/mms/transaction/Transaction;->isEquivalent(Lcom/android/mms/transaction/Transaction;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 923
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 924
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 925
    .restart local v4       #s:Ljava/lang/StringBuffer;
    const-string v7, "Mms:transaction"

    const-string v8, "Duplicated transaction: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->getServiceId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    .end local v4           #s:Ljava/lang/StringBuffer;
    :cond_4
    monitor-exit v6

    move v6, v10

    goto :goto_0

    .line 937
    .end local v5           #t:Lcom/android/mms/transaction/Transaction;
    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 938
    const-string v7, "Mms:transaction"

    const-string v8, "processTransaction: call beginMmsConnectivity..."

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    :cond_6
    iget-object v7, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v7}, Lcom/android/mms/transaction/TransactionService;->beginMmsConnectivity()I

    move-result v1

    .line 941
    .local v1, connectivityResult:I
    if-ne v1, v10, :cond_8

    .line 942
    iget-object v7, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-static {v7}, Lcom/android/mms/transaction/TransactionService;->access$400(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 943
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 944
    const-string v7, "Mms:transaction"

    const-string v8, "processTransaction: connResult=APN_REQUEST_STARTED, defer transaction pending MMS connectivity"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    :cond_7
    monitor-exit v6

    move v6, v10

    goto :goto_0

    .line 949
    :cond_8
    if-le v1, v10, :cond_a

    .line 951
    iget-object v7, p1, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 952
    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v7

    if-nez v7, :cond_9

    .line 954
    move-object v0, p1

    check-cast v0, Lcom/android/mms/transaction/NotificationTransaction;

    move-object v3, v0

    .line 955
    .local v3, noti:Lcom/android/mms/transaction/NotificationTransaction;
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/mms/transaction/NotificationTransaction;->getUri()Landroid/net/Uri;

    move-result-object v8

    const/16 v9, 0x80

    invoke-virtual {v7, v8, v9}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    .line 958
    .end local v3           #noti:Lcom/android/mms/transaction/NotificationTransaction;
    :cond_9
    iget-object v7, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {p1, v7}, Lcom/android/mms/transaction/Transaction;->attach(Lcom/android/mms/transaction/Observer;)V

    .line 959
    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->notifyObservers()V

    .line 960
    monitor-exit v6

    move v6, v10

    goto/16 :goto_0

    .line 964
    :cond_a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 965
    const-string v7, "Mms:transaction"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Adding transaction to \'mProcessing\' list: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    :cond_b
    iget-object v7, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-static {v7}, Lcom/android/mms/transaction/TransactionService;->access$200(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 968
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 971
    const/4 v6, 0x3

    invoke-virtual {p0, v6}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0x7530

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 974
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 975
    const-string v6, "Mms:transaction"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processTransaction: starting transaction "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    :cond_c
    iget-object v6, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {p1, v6}, Lcom/android/mms/transaction/Transaction;->attach(Lcom/android/mms/transaction/Observer;)V

    .line 980
    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->process()V

    move v6, v10

    .line 981
    goto/16 :goto_0

    .line 968
    .end local v1           #connectivityResult:I
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 29
    .parameter "msg"

    .prologue
    .line 619
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v25

    if-eqz v25, :cond_0

    .line 620
    const-string v25, "Mms:transaction"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Handling incoming message: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    :cond_0
    const/16 v19, 0x0

    .line 625
    .local v19, transaction:Lcom/android/mms/transaction/Transaction;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v25, v0

    sparse-switch v25, :sswitch_data_0

    .line 843
    const-string v25, "Mms:transaction"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "what="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    .end local p1
    :cond_1
    :goto_0
    return-void

    .line 627
    .restart local p1
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->getLooper()Landroid/os/Looper;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/os/Looper;->quit()V

    goto :goto_0

    .line 631
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/mms/transaction/TransactionService;->access$200(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v25

    monitor-enter v25

    .line 632
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/mms/transaction/TransactionService;->access$200(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v26

    if-eqz v26, :cond_2

    .line 633
    monitor-exit v25

    goto :goto_0

    .line 635
    :catchall_0
    move-exception v26

    monitor-exit v25
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v26

    :cond_2
    :try_start_1
    monitor-exit v25
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 637
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v25

    if-eqz v25, :cond_3

    .line 638
    const-string v25, "Mms:transaction"

    const-string v26, "handle EVENT_CONTINUE_MMS_CONNECTIVITY event..."

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/mms/transaction/TransactionService;->beginMmsConnectivity()I

    move-result v14

    .line 643
    .local v14, result:I
    if-eqz v14, :cond_4

    .line 644
    const-string v25, "Mms:transaction"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Extending MMS connectivity returned "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " instead of APN_ALREADY_ACTIVE"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 657
    :cond_4
    const/16 v25, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v25

    const-wide/16 v26, 0x7530

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 667
    .end local v14           #result:I
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/mms/transaction/TransactionService;->access$300(Lcom/android/mms/transaction/TransactionService;)Lcom/android/common/NetworkConnectivityListener;

    move-result-object v25

    if-eqz v25, :cond_1

    .line 671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/mms/transaction/TransactionService;->access$300(Lcom/android/mms/transaction/TransactionService;)Lcom/android/common/NetworkConnectivityListener;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/android/common/NetworkConnectivityListener;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v9

    .line 672
    .local v9, info:Landroid/net/NetworkInfo;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v25

    if-eqz v25, :cond_5

    .line 673
    const-string v25, "Mms:transaction"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Handle DATA_STATE_CHANGED event: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :cond_5
    if-eqz v9, :cond_6

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getType()I

    move-result v25

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_9

    .line 679
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v25

    if-eqz v25, :cond_7

    const-string v25, "Mms:transaction"

    const-string v26, "   type is not TYPE_MOBILE_MMS"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :cond_7
    invoke-virtual {v9}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v25

    if-eqz v25, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/mms/transaction/TransactionService;->access$400(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    if-lez v25, :cond_1

    .line 682
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v25

    if-eqz v25, :cond_8

    const-string v25, "Mms:transaction"

    const-string v26, "   pendded tansaction exist"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/mms/transaction/TransactionService;->beginMmsConnectivity()I

    move-result v13

    .line 684
    .local v13, reconnectResult:I
    const/16 v25, 0x1

    move v0, v13

    move/from16 v1, v25

    if-ne v0, v1, :cond_1

    .line 685
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v25

    if-eqz v25, :cond_1

    const-string v25, "Mms:transaction"

    const-string v26, "   mms reconnect requested"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 690
    .end local v13           #reconnectResult:I
    :cond_9
    invoke-virtual {v9}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v25

    if-nez v25, :cond_d

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getType()I

    move-result v25

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_d

    .line 692
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v25

    if-eqz v25, :cond_a

    const-string v25, "Mms:transaction"

    const-string v26, "   TYPE_MOBILE_MMS DISCONNECTED"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/mms/transaction/TransactionService;->access$200(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    if-lez v25, :cond_1

    .line 695
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v25

    if-eqz v25, :cond_b

    const-string v25, "Mms:transaction"

    const-string v26, "   processing transaction exist"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/mms/transaction/TransactionService;->access$200(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v25

    monitor-enter v25

    .line 698
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/mms/transaction/TransactionService;->access$200(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    move v0, v7

    move/from16 v1, v26

    if-ge v0, v1, :cond_c

    .line 700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/mms/transaction/TransactionService;->access$200(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v26

    move-object/from16 v0, v26

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/mms/transaction/Transaction;

    .line 701
    .local v18, tempT:Lcom/android/mms/transaction/Transaction;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/mms/transaction/TransactionService;->access$400(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 698
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 703
    .end local v18           #tempT:Lcom/android/mms/transaction/Transaction;
    :cond_c
    monitor-exit v25

    goto/16 :goto_0

    :catchall_1
    move-exception v26

    monitor-exit v25
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v26

    .line 708
    .end local v7           #i:I
    :cond_d
    new-instance v16, Lcom/android/mms/transaction/TransactionSettings;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v25, v0

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/TransactionSettings;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 712
    .local v16, settings:Lcom/android/mms/transaction/TransactionSettings;
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/transaction/TransactionSettings;->getMmscUrl()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_e

    .line 713
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v25

    if-eqz v25, :cond_1

    .line 714
    const-string v25, "Mms:transaction"

    const-string v26, "   empty MMSC url, bail"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 720
    :cond_e
    const/16 v25, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v25

    const-wide/16 v26, 0x7530

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 723
    const-string v25, "Mms:transaction"

    const-string v26, "pdp connected !!!! EVENT_DATA_STATE_CHANGED message reached on TransactinService"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->processPendingTransaction(Lcom/android/mms/transaction/Transaction;Lcom/android/mms/transaction/TransactionSettings;)V

    goto/16 :goto_0

    .line 729
    .end local v9           #info:Landroid/net/NetworkInfo;
    .end local v16           #settings:Lcom/android/mms/transaction/TransactionSettings;
    :sswitch_3
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v15, v0

    .line 731
    .local v15, serviceId:I
    :try_start_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcom/android/mms/transaction/TransactionBundle;

    .line 736
    .local v5, args:Lcom/android/mms/transaction/TransactionBundle;
    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionBundle;->getMmscUrl()Ljava/lang/String;

    move-result-object v10

    .line 737
    .local v10, mmsc:Ljava/lang/String;
    if-eqz v10, :cond_11

    .line 738
    new-instance v21, Lcom/android/mms/transaction/TransactionSettings;

    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionBundle;->getProxyAddress()Ljava/lang/String;

    move-result-object v25

    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionBundle;->getProxyPort()I

    move-result v26

    move-object/from16 v0, v21

    move-object v1, v10

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/mms/transaction/TransactionSettings;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 745
    .local v21, transactionSettings:Lcom/android/mms/transaction/TransactionSettings;
    :goto_2
    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionBundle;->getTransactionType()I

    move-result v22

    .line 747
    .local v22, transactionType:I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v25

    if-eqz v25, :cond_f

    .line 748
    const-string v25, "Mms:transaction"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "handle EVENT_TRANSACTION_REQUEST: transactionType="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    :cond_f
    packed-switch v22, :pswitch_data_0

    .line 797
    const-string v25, "Mms:transaction"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Invalid transaction type: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 798
    const/16 v19, 0x0

    .line 830
    if-nez v19, :cond_1

    .line 831
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v25

    if-eqz v25, :cond_10

    .line 832
    const-string v25, "Mms:transaction"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Transaction was null. Stopping self: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V

    .line 835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService;->stopSelf(I)V

    goto/16 :goto_0

    .line 741
    .end local v21           #transactionSettings:Lcom/android/mms/transaction/TransactionSettings;
    .end local v22           #transactionType:I
    :cond_11
    :try_start_4
    new-instance v21, Lcom/android/mms/transaction/TransactionSettings;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/TransactionSettings;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .restart local v21       #transactionSettings:Lcom/android/mms/transaction/TransactionSettings;
    goto/16 :goto_2

    .line 755
    .restart local v22       #transactionType:I
    :pswitch_0
    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionBundle;->getUri()Ljava/lang/String;

    move-result-object v24

    .line 756
    .local v24, uri:Ljava/lang/String;
    if-eqz v24, :cond_13

    .line 757
    new-instance v20, Lcom/android/mms/transaction/NotificationTransaction;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v25, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move v2, v15

    move-object/from16 v3, v21

    move-object/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mms/transaction/NotificationTransaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V

    .end local v19           #transaction:Lcom/android/mms/transaction/Transaction;
    .local v20, transaction:Lcom/android/mms/transaction/Transaction;
    move-object/from16 v19, v20

    .line 802
    .end local v20           #transaction:Lcom/android/mms/transaction/Transaction;
    .end local v24           #uri:Ljava/lang/String;
    .restart local v19       #transaction:Lcom/android/mms/transaction/Transaction;
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->processTransaction(Lcom/android/mms/transaction/Transaction;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result v25

    if-nez v25, :cond_16

    .line 803
    const/16 v19, 0x0

    .line 830
    if-nez v19, :cond_1

    .line 831
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v25

    if-eqz v25, :cond_12

    .line 832
    const-string v25, "Mms:transaction"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Transaction was null. Stopping self: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V

    .line 835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService;->stopSelf(I)V

    goto/16 :goto_0

    .line 762
    .restart local v24       #uri:Ljava/lang/String;
    :cond_13
    :try_start_5
    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionBundle;->getPushData()[B

    move-result-object v12

    .line 763
    .local v12, pushData:[B
    new-instance v11, Lcom/google/android/mms/pdu/PduParser;

    invoke-direct {v11, v12}, Lcom/google/android/mms/pdu/PduParser;-><init>([B)V

    .line 764
    .local v11, parser:Lcom/google/android/mms/pdu/PduParser;
    invoke-virtual {v11}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v8

    .line 766
    .local v8, ind:Lcom/google/android/mms/pdu/GenericPdu;
    const/16 v23, 0x82

    .line 767
    .local v23, type:I
    if-eqz v8, :cond_14

    invoke-virtual {v8}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v25

    move/from16 v0, v25

    move/from16 v1, v23

    if-ne v0, v1, :cond_14

    .line 768
    const-string v25, "Mms:transaction"

    const-string v26, "new MMS noti comming"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    new-instance v20, Lcom/android/mms/transaction/NotificationTransaction;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v25, v0

    check-cast v8, Lcom/google/android/mms/pdu/NotificationInd;

    .end local v8           #ind:Lcom/google/android/mms/pdu/GenericPdu;
    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move v2, v15

    move-object/from16 v3, v21

    move-object v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mms/transaction/NotificationTransaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Lcom/google/android/mms/pdu/NotificationInd;)V

    .end local v19           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v20       #transaction:Lcom/android/mms/transaction/Transaction;
    move-object/from16 v19, v20

    .line 778
    .end local v20           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v19       #transaction:Lcom/android/mms/transaction/Transaction;
    goto :goto_3

    .line 773
    .restart local v8       #ind:Lcom/google/android/mms/pdu/GenericPdu;
    :cond_14
    const-string v25, "Mms:transaction"

    const-string v26, "Invalid PUSH data."

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 774
    const/16 v19, 0x0

    .line 830
    if-nez v19, :cond_1

    .line 831
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v25

    if-eqz v25, :cond_15

    .line 832
    const-string v25, "Mms:transaction"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Transaction was null. Stopping self: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V

    .line 835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService;->stopSelf(I)V

    goto/16 :goto_0

    .line 780
    .end local v8           #ind:Lcom/google/android/mms/pdu/GenericPdu;
    .end local v11           #parser:Lcom/google/android/mms/pdu/PduParser;
    .end local v12           #pushData:[B
    .end local v23           #type:I
    .end local v24           #uri:Ljava/lang/String;
    :pswitch_1
    :try_start_6
    const-string v25, "Mms:transaction"

    const-string v26, "start deferred retrieve"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    new-instance v20, Lcom/android/mms/transaction/RetrieveTransaction;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v25, v0

    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionBundle;->getUri()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move v2, v15

    move-object/from16 v3, v21

    move-object/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mms/transaction/RetrieveTransaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V

    .end local v19           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v20       #transaction:Lcom/android/mms/transaction/Transaction;
    move-object/from16 v19, v20

    .line 784
    .end local v20           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v19       #transaction:Lcom/android/mms/transaction/Transaction;
    goto/16 :goto_3

    .line 786
    :pswitch_2
    const-string v25, "Mms:transaction"

    const-string v26, "start send"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    new-instance v20, Lcom/android/mms/transaction/SendTransaction;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v25, v0

    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionBundle;->getUri()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move v2, v15

    move-object/from16 v3, v21

    move-object/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mms/transaction/SendTransaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V

    .end local v19           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v20       #transaction:Lcom/android/mms/transaction/Transaction;
    move-object/from16 v19, v20

    .line 790
    .end local v20           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v19       #transaction:Lcom/android/mms/transaction/Transaction;
    goto/16 :goto_3

    .line 792
    :pswitch_3
    new-instance v20, Lcom/android/mms/transaction/ReadRecTransaction;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v25, v0

    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionBundle;->getUri()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move v2, v15

    move-object/from16 v3, v21

    move-object/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mms/transaction/ReadRecTransaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V

    .end local v19           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v20       #transaction:Lcom/android/mms/transaction/Transaction;
    move-object/from16 v19, v20

    .line 795
    .end local v20           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v19       #transaction:Lcom/android/mms/transaction/Transaction;
    goto/16 :goto_3

    .line 807
    :cond_16
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v25

    if-eqz v25, :cond_17

    .line 808
    const-string v25, "Mms:transaction"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Started processing of incoming message: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 830
    :cond_17
    if-nez v19, :cond_1

    .line 831
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v25

    if-eqz v25, :cond_18

    .line 832
    const-string v25, "Mms:transaction"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Transaction was null. Stopping self: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V

    .line 835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService;->stopSelf(I)V

    goto/16 :goto_0

    .line 810
    .end local v5           #args:Lcom/android/mms/transaction/TransactionBundle;
    .end local v10           #mmsc:Ljava/lang/String;
    .end local v21           #transactionSettings:Lcom/android/mms/transaction/TransactionSettings;
    .end local v22           #transactionType:I
    :catch_0
    move-exception v25

    move-object/from16 v6, v25

    .line 811
    .local v6, ex:Ljava/lang/Exception;
    :try_start_7
    const-string v25, "Mms:transaction"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Exception occurred while handling message: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object v2, v6

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 813
    if-eqz v19, :cond_1a

    .line 815
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/Transaction;->detach(Lcom/android/mms/transaction/Observer;)V

    .line 816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/mms/transaction/TransactionService;->access$200(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_19

    .line 817
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/mms/transaction/TransactionService;->access$200(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v25

    monitor-enter v25
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    .line 818
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/mms/transaction/TransactionService;->access$200(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 819
    monitor-exit v25
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 826
    :cond_19
    const/16 v19, 0x0

    .line 830
    :cond_1a
    :goto_4
    if-nez v19, :cond_1

    .line 831
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v25

    if-eqz v25, :cond_1b

    .line 832
    const-string v25, "Mms:transaction"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Transaction was null. Stopping self: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V

    .line 835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService;->stopSelf(I)V

    goto/16 :goto_0

    .line 819
    :catchall_2
    move-exception v26

    :try_start_a
    monitor-exit v25
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v26
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1

    .line 821
    :catch_1
    move-exception v25

    move-object/from16 v17, v25

    .line 822
    .local v17, t:Ljava/lang/Throwable;
    :try_start_c
    const-string v25, "Mms:transaction"

    const-string v26, "Unexpected Throwable."

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 826
    const/16 v19, 0x0

    .line 827
    goto :goto_4

    .line 826
    .end local v17           #t:Ljava/lang/Throwable;
    :catchall_3
    move-exception v25

    const/16 v19, 0x0

    :try_start_d
    throw v25
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 830
    .end local v6           #ex:Ljava/lang/Exception;
    :catchall_4
    move-exception v25

    if-nez v19, :cond_1d

    .line 831
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v26

    if-eqz v26, :cond_1c

    .line 832
    const-string v26, "Mms:transaction"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Transaction was null. Stopping self: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V

    .line 835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService;->stopSelf(I)V

    :cond_1d
    throw v25

    .line 840
    .end local v15           #serviceId:I
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Lcom/android/mms/transaction/TransactionSettings;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->processPendingTransaction(Lcom/android/mms/transaction/Transaction;Lcom/android/mms/transaction/TransactionSettings;)V

    goto/16 :goto_0

    .line 625
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x3 -> :sswitch_1
        0x4 -> :sswitch_4
        0x64 -> :sswitch_0
    .end sparse-switch

    .line 753
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
