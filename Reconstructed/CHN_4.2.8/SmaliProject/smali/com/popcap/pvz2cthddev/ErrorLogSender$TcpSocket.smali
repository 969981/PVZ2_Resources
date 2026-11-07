.class Lcom/popcap/pvz2cthddev/ErrorLogSender$TcpSocket;
.super Ljava/lang/Object;
.source "ErrorLogSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/popcap/pvz2cthddev/ErrorLogSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TcpSocket"
.end annotation


# instance fields
.field private logSrvAddr:Ljava/lang/String;

.field mDos:Ljava/io/DataOutputStream;

.field mSocket:Ljava/net/Socket;

.field final synthetic this$0:Lcom/popcap/pvz2cthddev/ErrorLogSender;


# direct methods
.method public constructor <init>(Lcom/popcap/pvz2cthddev/ErrorLogSender;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/ErrorLogSender$TcpSocket;->this$0:Lcom/popcap/pvz2cthddev/ErrorLogSender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    const-string p1, "pvz2logandroid.intelligent.popcap.com.cn"

    iput-object p1, p0, Lcom/popcap/pvz2cthddev/ErrorLogSender$TcpSocket;->logSrvAddr:Ljava/lang/String;

    const/4 p1, 0x0

    .line 154
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/ErrorLogSender$TcpSocket;->mSocket:Ljava/net/Socket;

    .line 155
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/ErrorLogSender$TcpSocket;->mDos:Ljava/io/DataOutputStream;

    return-void
.end method


# virtual methods
.method public NetWorkReset()V
    .locals 1

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/ErrorLogSender$TcpSocket;->mDos:Ljava/io/DataOutputStream;

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/ErrorLogSender$TcpSocket;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_1

    .line 125
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    :cond_1
    const/4 v0, 0x0

    .line 128
    iput-object v0, p0, Lcom/popcap/pvz2cthddev/ErrorLogSender$TcpSocket;->mSocket:Ljava/net/Socket;

    .line 129
    iput-object v0, p0, Lcom/popcap/pvz2cthddev/ErrorLogSender$TcpSocket;->mDos:Ljava/io/DataOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public SendMsg(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/ErrorLogSender$TcpSocket;->keepLive()Z

    move-result v1

    if-nez v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    return-void

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/ErrorLogSender$TcpSocket;->mDos:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 148
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/ErrorLogSender$TcpSocket;->mDos:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    .line 150
    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/ErrorLogSender$TcpSocket;->NetWorkReset()V

    return-void
.end method

.method public keepLive()Z
    .locals 4

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/ErrorLogSender$TcpSocket;->mSocket:Ljava/net/Socket;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/popcap/pvz2cthddev/ErrorLogSender$TcpSocket;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/ErrorLogSender$TcpSocket;->logSrvAddr:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 95
    new-instance v2, Ljava/net/Socket;

    const/16 v3, 0x10fa

    invoke-direct {v2, v0, v3}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    iput-object v2, p0, Lcom/popcap/pvz2cthddev/ErrorLogSender$TcpSocket;->mSocket:Ljava/net/Socket;

    .line 96
    invoke-virtual {v2, v1}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 97
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v2, p0, Lcom/popcap/pvz2cthddev/ErrorLogSender$TcpSocket;->mSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/popcap/pvz2cthddev/ErrorLogSender$TcpSocket;->mDos:Ljava/io/DataOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return v1

    .line 102
    :catch_0
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/ErrorLogSender$TcpSocket;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_2

    .line 104
    invoke-virtual {p0}, Lcom/popcap/pvz2cthddev/ErrorLogSender$TcpSocket;->NetWorkReset()V

    :cond_2
    const-wide/16 v0, 0x1388

    .line 108
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 111
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    return v0
.end method
