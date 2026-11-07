.class public final Lcom/talkweb/network/internal/NativeCall;
.super Ljava/lang/Object;
.source "NativeCall.java"

# interfaces
.implements Lcom/talkweb/network/model/Call;


# instance fields
.field private volatile canceled:Z

.field private final connection:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/net/HttpURLConnection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/talkweb/network/internal/NativeCall;->canceled:Z

    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/talkweb/network/internal/NativeCall;->connection:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lcom/talkweb/network/internal/NativeCall;->canceled:Z

    .line 28
    iget-object v0, p0, Lcom/talkweb/network/internal/NativeCall;->connection:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 31
    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public isCanceled()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lcom/talkweb/network/internal/NativeCall;->canceled:Z

    return v0
.end method

.method public setConnection(Ljava/net/HttpURLConnection;)V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/talkweb/network/internal/NativeCall;->connection:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
