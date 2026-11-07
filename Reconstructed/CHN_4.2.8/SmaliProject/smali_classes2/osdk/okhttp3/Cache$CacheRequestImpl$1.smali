.class public Losdk/okhttp3/Cache$CacheRequestImpl$1;
.super Losdk/okio/ForwardingSink;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Losdk/okhttp3/Cache$CacheRequestImpl;-><init>(Losdk/okhttp3/Cache;Losdk/okhttp3/internal/cache/DiskLruCache$Editor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Losdk/okhttp3/Cache$CacheRequestImpl;

.field final synthetic val$editor:Losdk/okhttp3/internal/cache/DiskLruCache$Editor;

.field final synthetic val$this$0:Losdk/okhttp3/Cache;


# direct methods
.method constructor <init>(Losdk/okhttp3/Cache$CacheRequestImpl;Losdk/okio/Sink;Losdk/okhttp3/Cache;Losdk/okhttp3/internal/cache/DiskLruCache$Editor;)V
    .locals 0

    .line 439
    iput-object p1, p0, Losdk/okhttp3/Cache$CacheRequestImpl$1;->this$1:Losdk/okhttp3/Cache$CacheRequestImpl;

    iput-object p3, p0, Losdk/okhttp3/Cache$CacheRequestImpl$1;->val$this$0:Losdk/okhttp3/Cache;

    iput-object p4, p0, Losdk/okhttp3/Cache$CacheRequestImpl$1;->val$editor:Losdk/okhttp3/internal/cache/DiskLruCache$Editor;

    invoke-direct {p0, p2}, Losdk/okio/ForwardingSink;-><init>(Losdk/okio/Sink;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 441
    iget-object v0, p0, Losdk/okhttp3/Cache$CacheRequestImpl$1;->this$1:Losdk/okhttp3/Cache$CacheRequestImpl;

    iget-object v0, v0, Losdk/okhttp3/Cache$CacheRequestImpl;->this$0:Losdk/okhttp3/Cache;

    monitor-enter v0

    .line 442
    :try_start_0
    iget-object v1, p0, Losdk/okhttp3/Cache$CacheRequestImpl$1;->this$1:Losdk/okhttp3/Cache$CacheRequestImpl;

    iget-boolean v1, v1, Losdk/okhttp3/Cache$CacheRequestImpl;->done:Z

    if-eqz v1, :cond_0

    .line 443
    monitor-exit v0

    return-void

    .line 445
    :cond_0
    iget-object v1, p0, Losdk/okhttp3/Cache$CacheRequestImpl$1;->this$1:Losdk/okhttp3/Cache$CacheRequestImpl;

    const/4 v2, 0x1

    iput-boolean v2, v1, Losdk/okhttp3/Cache$CacheRequestImpl;->done:Z

    .line 446
    iget-object v1, p0, Losdk/okhttp3/Cache$CacheRequestImpl$1;->this$1:Losdk/okhttp3/Cache$CacheRequestImpl;

    iget-object v1, v1, Losdk/okhttp3/Cache$CacheRequestImpl;->this$0:Losdk/okhttp3/Cache;

    iget v3, v1, Losdk/okhttp3/Cache;->writeSuccessCount:I

    add-int/2addr v3, v2

    iput v3, v1, Losdk/okhttp3/Cache;->writeSuccessCount:I

    .line 447
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 448
    invoke-super {p0}, Losdk/okio/ForwardingSink;->close()V

    .line 449
    iget-object v0, p0, Losdk/okhttp3/Cache$CacheRequestImpl$1;->val$editor:Losdk/okhttp3/internal/cache/DiskLruCache$Editor;

    invoke-virtual {v0}, Losdk/okhttp3/internal/cache/DiskLruCache$Editor;->commit()V

    return-void

    :catchall_0
    move-exception v1

    .line 447
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
