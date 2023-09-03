self.cond_image torch.Size([3, 3, 256, 256])
batch_size 3
DOWN h.shape torch.Size([3, 64, 256, 256])
DOWN h.shape torch.Size([3, 64, 256, 256])
DOWN h.shape torch.Size([3, 64, 256, 256])
DOWN h.shape torch.Size([3, 64, 128, 128])
DOWN h.shape torch.Size([3, 128, 128, 128])
DOWN h.shape torch.Size([3, 128, 128, 128])
DOWN h.shape torch.Size([3, 128, 64, 64])
DOWN h.shape torch.Size([3, 256, 64, 64])
DOWN h.shape torch.Size([3, 256, 64, 64])
DOWN h.shape torch.Size([3, 256, 32, 32])
DOWN h.shape torch.Size([3, 512, 32, 32])
DOWN h.shape torch.Size([3, 512, 32, 32])
MID1 h.shape torch.Size([3, 512, 32, 32])
x_shape torch.Size([3, 512, 1024])
MID2 h.shape torch.Size([3, 512, 32, 32])
UP h.shape torch.Size([3, 512, 32, 32])
UP h.shape torch.Size([3, 512, 32, 32])
UP h.shape torch.Size([3, 512, 64, 64])
UP h.shape torch.Size([3, 256, 64, 64])
UP h.shape torch.Size([3, 256, 64, 64])
UP h.shape torch.Size([3, 256, 128, 128])
UP h.shape torch.Size([3, 128, 128, 128])
UP h.shape torch.Size([3, 128, 128, 128])
UP h.shape torch.Size([3, 128, 256, 256])
UP h.shape torch.Size([3, 64, 256, 256])
UP h.shape torch.Size([3, 64, 256, 256])
UP h.shape torch.Size([3, 64, 256, 256])
x_shape torch.Size([3, 512, 1024])




self.netG Network(
  (denoise_fn): UNet(
    (cond_embed): Sequential(
      (0): Linear(in_features=64, out_features=256, bias=True)
      (1): SiLU()
      (2): Linear(in_features=256, out_features=256, bias=True)
    )
    (input_blocks): ModuleList(
      (0): EmbedSequential(
        (0): Conv2d(6, 64, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
      )
      (1): EmbedSequential(
        (0): ResBlock(
          (in_layers): Sequential(
            (0): BatchNorm2d(64, eps=1e-05, momentum=0.1, affine=True, track_running_stats=True)
            (1): SiLU()
            (2): Conv2d(64, 64, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
          )
          (h_upd): Identity()
          (x_upd): Identity()
          (emb_layers): Sequential(
            (0): SiLU()
            (1): Linear(in_features=256, out_features=128, bias=True)
          )
          (out_layers): Sequential(
            (0): BatchNorm2d(64, eps=1e-05, momentum=0.1, affine=True, track_running_stats=True)
            (1): SiLU()
            (2): Dropout(p=0.2, inplace=False)
            (3): Conv2d(64, 64, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
          )
          (skip_connection): Identity()
        )
      )
      (2): EmbedSequential(
        (0): ResBlock(
          (in_layers): Sequential(
            (0): BatchNorm2d(64, eps=1e-05, momentum=0.1, affine=True, track_running_stats=True)
            (1): SiLU()
            (2): Conv2d(64, 64, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
          )
          (h_upd): Identity()
          (x_upd): Identity()
          (emb_layers): Sequential(
            (0): SiLU()
            (1): Linear(in_features=256, out_features=128, bias=True)
          )
          (out_layers): Sequential(
            (0): BatchNorm2d(64, eps=1e-05, momentum=0.1, affine=True, track_running_stats=True)
            (1): SiLU()
            (2): Dropout(p=0.2, inplace=False)
            (3): Conv2d(64, 64, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
          )
          (skip_connection): Identity()
        )
      )
      (3): EmbedSequential(
        (0): ResBlock(
          (in_layers): Sequential(
            (0): BatchNorm2d(64, eps=1e-05, momentum=0.1, affine=True, track_running_stats=True)
            (1): SiLU()
            (2): Conv2d(64, 64, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
          )
          (h_upd): Downsample(
            (op): AvgPool2d(kernel_size=2, stride=2, padding=0)
          )
          (x_upd): Downsample(
            (op): AvgPool2d(kernel_size=2, stride=2, padding=0)
          )
          (emb_layers): Sequential(
            (0): SiLU()
            (1): Linear(in_features=256, out_features=128, bias=True)
          )
          (out_layers): Sequential(
            (0): BatchNorm2d(64, eps=1e-05, momentum=0.1, affine=True, track_running_stats=True)
            (1): SiLU()
            (2): Dropout(p=0.2, inplace=False)
            (3): Conv2d(64, 64, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
          )
          (skip_connection): Identity()
        )
      )
      (4): EmbedSequential(
        (0): ResBlock(
          (in_layers): Sequential(
            (0): BatchNorm2d(64, eps=1e-05, momentum=0.1, affine=True, track_running_stats=True)
            (1): SiLU()
            (2): Conv2d(64, 128, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
          )
          (h_upd): Identity()
          (x_upd): Identity()
          (emb_layers): Sequential(
            (0): SiLU()
            (1): Linear(in_features=256, out_features=256, bias=True)
          )
          (out_layers): Sequential(
            (0): BatchNorm2d(128, eps=1e-05, momentum=0.1, affine=True, track_running_stats=True)
            (1): SiLU()
            (2): Dropout(p=0.2, inplace=False)
            (3): Conv2d(128, 128, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
          )
          (skip_connection): Conv2d(64, 128, kernel_size=(1, 1), stride=(1, 1))
        )
      )
      (5): EmbedSequential(
        (0): ResBlock(
          (in_layers): Sequential(
            (0): BatchNorm2d(128, eps=1e-05, momentum=0.1, affine=True, track_running_stats=True)
            (1): SiLU()
            (2): Conv2d(128, 128, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
          )
          (h_upd): Identity()
          (x_upd): Identity()
          (emb_layers): Sequential(
            (0): SiLU()
            (1): Linear(in_features=256, out_features=256, bias=True)
          )
          (out_layers): Sequential(
            (0): BatchNorm2d(128, eps=1e-05, momentum=0.1, affine=True, track_running_stats=True)
            (1): SiLU()
            (2): Dropout(p=0.2, inplace=False)
            (3): Conv2d(128, 128, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
          )
          (skip_connection): Identity()
        )
      )
      (6): EmbedSequential(
        (0): ResBlock(
          (in_layers): Sequential(
            (0): BatchNorm2d(128, eps=1e-05, momentum=0.1, affine=True, track_running_stats=True)
            (1): SiLU()
            (2): Conv2d(128, 128, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
          )
          (h_upd): Downsample(
            (op): AvgPool2d(kernel_size=2, stride=2, padding=0)
          )
          (x_upd): Downsample(
            (op): AvgPool2d(kernel_size=2, stride=2, padding=0)
          )
          (emb_layers): Sequential(
            (0): SiLU()
            (1): Linear(in_features=256, out_features=256, bias=True)
          )
          (out_layers): Sequential(
            (0): BatchNorm2d(128, eps=1e-05, momentum=0.1, affine=True, track_running_stats=True)
            (1): SiLU()
            (2): Dropout(p=0.2, inplace=False)
            (3): Conv2d(128, 128, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
          )
          (skip_connection): Identity()
        )
      )
      (7): EmbedSequential(
        (0): ResBlock(
          (in_layers): Sequential(
            (0): BatchNorm2d(128, eps=1e-05, momentum=0.1, affine=True, track_running_stats=True)
            (1): SiLU()
            (2): Conv2d(128, 256, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
          )
          (h_upd): Identity()
          (x_upd): Identity()
          (emb_layers): Sequential(
            (0): SiLU()
            (1): Linear(in_features=256, out_features=512, bias=True)
          )
          (out_layers): Sequential(
            (0): BatchNorm2d(256, eps=1e-05, momentum=0.1, affine=True, track_running_stats=True)
            (1): SiLU()
            (2): Dropout(p=0.2, inplace=False)
            (3): Conv2d(256, 256, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
          )
          (skip_connection): Conv2d(128, 256, kernel_size=(1, 1), stride=(1, 1))
        )
      )
      (8): EmbedSequential(
        (0): ResBlock(
          (in_layers): Sequential(
            (0): BatchNorm2d(256, eps=1e-05, momentum=0.1, affine=True, track_running_stats=True)
            (1): SiLU()
            (2): Conv2d(256, 256, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
          )
          (h_upd): Identity()
          (x_upd): Identity()
          (emb_layers): Sequential(
            (0): SiLU()
            (1): Linear(in_features=256, out_features=512, bias=True)
          )
          (out_layers): Sequential(
            (0): BatchNorm2d(256, eps=1e-05, momentum=0.1, affine=True, track_running_stats=True)
            (1): SiLU()
            (2): Dropout(p=0.2, inplace=False)
            (3): Conv2d(256, 256, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
          )
          (skip_connection): Identity()
        )
      )
      (9): EmbedSequential(
        (0): ResBlock(
          (in_layers): Sequential(
            (0): BatchNorm2d(256, eps=1e-05, momentum=0.1, affine=True, track_running_stats=True)
            (1): SiLU()
            (2): Conv2d(256, 256, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
          )
          (h_upd): Downsample(
            (op): AvgPool2d(kernel_size=2, stride=2, padding=0)
          )
          (x_upd): Downsample(
            (op): AvgPool2d(kernel_size=2, stride=2, padding=0)
          )
          (emb_layers): Sequential(
            (0): SiLU()
            (1): Linear(in_features=256, out_features=512, bias=True)
          )
          (out_layers): Sequential(
            (0): BatchNorm2d(256, eps=1e-05, momentum=0.1, affine=True, track_running_stats=True)
            (1): SiLU()
            (2): Dropout(p=0.2, inplace=False)
            (3): Conv2d(256, 256, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
          )
          (skip_connection): Identity()
        )
      )
      (10): EmbedSequential(
        (0): ResBlock(
          (in_layers): Sequential(
            (0): BatchNorm2d(256, eps=1e-05, momentum=0.1, affine=True, track_running_stats=True)
            (1): SiLU()
            (2): Conv2d(256, 512, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
          )
          (h_upd): Identity()
          (x_upd): Identity()
          (emb_layers): Sequential(
            (0): SiLU()
            (1): Linear(in_features=256, out_features=1024, bias=True)
          )
          (out_layers): Sequential(
            (0): BatchNorm2d(512, eps=1e-05, momentum=0.1, affine=True, track_running_stats=True)
            (1): SiLU()
            (2): Dropout(p=0.2, inplace=False)
            (3): Conv2d(512, 512, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
          )
          (skip_connection): Conv2d(256, 512, kernel_size=(1, 1), stride=(1, 1))
        )
      )
      (11): EmbedSequential(
        (0): ResBlock(
          (in_layers): Sequential(
            (0): BatchNorm2d(512, eps=1e-05, momentum=0.1, affine=True, track_running_stats=True)
            (1): SiLU()
            (2): Conv2d(512, 512, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
          )
          (h_upd): Identity()
          (x_upd): Identity()
          (emb_layers): Sequential(
            (0): SiLU()
            (1): Linear(in_features=256, out_features=1024, bias=True)
          )
          (out_layers): Sequential(
            (0): BatchNorm2d(512, eps=1e-05, momentum=0.1, affine=True, track_running_stats=True)
            (1): SiLU()
            (2): Dropout(p=0.2, inplace=False)
            (3): Conv2d(512, 512, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
          )
          (skip_connection): Identity()
        )
      )
    )
    (middle_block): EmbedSequential(
      (0): ResBlock(
        (in_layers): Sequential(
          (0): BatchNorm2d(512, eps=1e-05, momentum=0.1, affine=True, track_running_stats=True)
          (1): SiLU()
          (2): Conv2d(512, 512, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
        )
        (h_upd): Identity()
        (x_upd): Identity()
        (emb_layers): Sequential(
          (0): SiLU()
          (1): Linear(in_features=256, out_features=1024, bias=True)
        )
        (out_layers): Sequential(
          (0): BatchNorm2d(512, eps=1e-05, momentum=0.1, affine=True, track_running_stats=True)
          (1): SiLU()
          (2): Dropout(p=0.2, inplace=False)
          (3): Conv2d(512, 512, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
        )
        (skip_connection): Identity()
      )
      (1): AttentionBlock(
        (norm): BatchNorm2d(512, eps=1e-05, momentum=0.1, affine=True, track_running_stats=True)
        (qkv): Conv1d(512, 1536, kernel_size=(1,), stride=(1,))
        (attention): QKVAttentionLegacy()
        (proj_out): Conv1d(512, 512, kernel_size=(1,), stride=(1,))
      )
      (2): ResBlock(
        (in_layers): Sequential(
          (0): BatchNorm2d(512, eps=1e-05, momentum=0.1, affine=True, track_running_stats=True)
          (1): SiLU()
          (2): Conv2d(512, 512, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
        )
        (h_upd): Identity()
        (x_upd): Identity()
        (emb_layers): Sequential(
          (0): SiLU()
          (1): Linear(in_features=256, out_features=1024, bias=True)
        )
        (out_layers): Sequential(
          (0): BatchNorm2d(512, eps=1e-05, momentum=0.1, affine=True, track_running_stats=True)
          (1): SiLU()
          (2): Dropout(p=0.2, inplace=False)
          (3): Conv2d(512, 512, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
        )
        (skip_connection): Identity()
      )
    )
    (output_blocks): ModuleList(
      (0): EmbedSequential(
        (0): ResBlock(
          (in_layers): Sequential(
            (0): BatchNorm2d(1024, eps=1e-05, momentum=0.1, affine=True, track_running_stats=True)
            (1): SiLU()
            (2): Conv2d(1024, 512, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
          )
          (h_upd): Identity()
          (x_upd): Identity()
          (emb_layers): Sequential(
            (0): SiLU()
            (1): Linear(in_features=256, out_features=1024, bias=True)
          )
          (out_layers): Sequential(
            (0): BatchNorm2d(512, eps=1e-05, momentum=0.1, affine=True, track_running_stats=True)
            (1): SiLU()
            (2): Dropout(p=0.2, inplace=False)
            (3): Conv2d(512, 512, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
          )
          (skip_connection): Conv2d(1024, 512, kernel_size=(1, 1), stride=(1, 1))
        )
      )
      (1): EmbedSequential(
        (0): ResBlock(
          (in_layers): Sequential(
            (0): BatchNorm2d(1024, eps=1e-05, momentum=0.1, affine=True, track_running_stats=True)
            (1): SiLU()
            (2): Conv2d(1024, 512, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
          )
          (h_upd): Identity()
          (x_upd): Identity()
          (emb_layers): Sequential(
            (0): SiLU()
            (1): Linear(in_features=256, out_features=1024, bias=True)
          )
          (out_layers): Sequential(
            (0): BatchNorm2d(512, eps=1e-05, momentum=0.1, affine=True, track_running_stats=True)
            (1): SiLU()
            (2): Dropout(p=0.2, inplace=False)
            (3): Conv2d(512, 512, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
          )
          (skip_connection): Conv2d(1024, 512, kernel_size=(1, 1), stride=(1, 1))
        )
      )
      (2): EmbedSequential(
        (0): ResBlock(
          (in_layers): Sequential(
            (0): BatchNorm2d(768, eps=1e-05, momentum=0.1, affine=True, track_running_stats=True)
            (1): SiLU()
            (2): Conv2d(768, 512, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
          )
          (h_upd): Identity()
          (x_upd): Identity()
          (emb_layers): Sequential(
            (0): SiLU()
            (1): Linear(in_features=256, out_features=1024, bias=True)
          )
          (out_layers): Sequential(
            (0): BatchNorm2d(512, eps=1e-05, momentum=0.1, affine=True, track_running_stats=True)
            (1): SiLU()
            (2): Dropout(p=0.2, inplace=False)
            (3): Conv2d(512, 512, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
          )
          (skip_connection): Conv2d(768, 512, kernel_size=(1, 1), stride=(1, 1))
        )
        (1): ResBlock(
          (in_layers): Sequential(
            (0): BatchNorm2d(512, eps=1e-05, momentum=0.1, affine=True, track_running_stats=True)
            (1): SiLU()
            (2): Conv2d(512, 512, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
          )
          (h_upd): Upsample()
          (x_upd): Upsample()
          (emb_layers): Sequential(
            (0): SiLU()
            (1): Linear(in_features=256, out_features=1024, bias=True)
          )
          (out_layers): Sequential(
            (0): BatchNorm2d(512, eps=1e-05, momentum=0.1, affine=True, track_running_stats=True)
            (1): SiLU()
            (2): Dropout(p=0.2, inplace=False)
            (3): Conv2d(512, 512, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
          )
          (skip_connection): Identity()
        )
      )
      (3): EmbedSequential(
        (0): ResBlock(
          (in_layers): Sequential(
            (0): BatchNorm2d(768, eps=1e-05, momentum=0.1, affine=True, track_running_stats=True)
            (1): SiLU()
            (2): Conv2d(768, 256, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
          )
          (h_upd): Identity()
          (x_upd): Identity()
          (emb_layers): Sequential(
            (0): SiLU()
            (1): Linear(in_features=256, out_features=512, bias=True)
          )
          (out_layers): Sequential(
            (0): BatchNorm2d(256, eps=1e-05, momentum=0.1, affine=True, track_running_stats=True)
            (1): SiLU()
            (2): Dropout(p=0.2, inplace=False)
            (3): Conv2d(256, 256, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
          )
          (skip_connection): Conv2d(768, 256, kernel_size=(1, 1), stride=(1, 1))
        )
      )
      (4): EmbedSequential(
        (0): ResBlock(
          (in_layers): Sequential(
            (0): BatchNorm2d(512, eps=1e-05, momentum=0.1, affine=True, track_running_stats=True)
            (1): SiLU()
            (2): Conv2d(512, 256, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
          )
          (h_upd): Identity()
          (x_upd): Identity()
          (emb_layers): Sequential(
            (0): SiLU()
            (1): Linear(in_features=256, out_features=512, bias=True)
          )
          (out_layers): Sequential(
            (0): BatchNorm2d(256, eps=1e-05, momentum=0.1, affine=True, track_running_stats=True)
            (1): SiLU()
            (2): Dropout(p=0.2, inplace=False)
            (3): Conv2d(256, 256, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
          )
          (skip_connection): Conv2d(512, 256, kernel_size=(1, 1), stride=(1, 1))
        )
      )
      (5): EmbedSequential(
        (0): ResBlock(
          (in_layers): Sequential(
            (0): BatchNorm2d(384, eps=1e-05, momentum=0.1, affine=True, track_running_stats=True)
            (1): SiLU()
            (2): Conv2d(384, 256, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
          )
          (h_upd): Identity()
          (x_upd): Identity()
          (emb_layers): Sequential(
            (0): SiLU()
            (1): Linear(in_features=256, out_features=512, bias=True)
          )
          (out_layers): Sequential(
            (0): BatchNorm2d(256, eps=1e-05, momentum=0.1, affine=True, track_running_stats=True)
            (1): SiLU()
            (2): Dropout(p=0.2, inplace=False)
            (3): Conv2d(256, 256, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
          )
          (skip_connection): Conv2d(384, 256, kernel_size=(1, 1), stride=(1, 1))
        )
        (1): ResBlock(
          (in_layers): Sequential(
            (0): BatchNorm2d(256, eps=1e-05, momentum=0.1, affine=True, track_running_stats=True)
            (1): SiLU()
            (2): Conv2d(256, 256, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
          )
          (h_upd): Upsample()
          (x_upd): Upsample()
          (emb_layers): Sequential(
            (0): SiLU()
            (1): Linear(in_features=256, out_features=512, bias=True)
          )
          (out_layers): Sequential(
            (0): BatchNorm2d(256, eps=1e-05, momentum=0.1, affine=True, track_running_stats=True)
            (1): SiLU()
            (2): Dropout(p=0.2, inplace=False)
            (3): Conv2d(256, 256, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
          )
          (skip_connection): Identity()
        )
      )
      (6): EmbedSequential(
        (0): ResBlock(
          (in_layers): Sequential(
            (0): BatchNorm2d(384, eps=1e-05, momentum=0.1, affine=True, track_running_stats=True)
            (1): SiLU()
            (2): Conv2d(384, 128, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
          )
          (h_upd): Identity()
          (x_upd): Identity()
          (emb_layers): Sequential(
            (0): SiLU()
            (1): Linear(in_features=256, out_features=256, bias=True)
          )
          (out_layers): Sequential(
            (0): BatchNorm2d(128, eps=1e-05, momentum=0.1, affine=True, track_running_stats=True)
            (1): SiLU()
            (2): Dropout(p=0.2, inplace=False)
            (3): Conv2d(128, 128, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
          )
          (skip_connection): Conv2d(384, 128, kernel_size=(1, 1), stride=(1, 1))
        )
      )
      (7): EmbedSequential(
        (0): ResBlock(
          (in_layers): Sequential(
            (0): BatchNorm2d(256, eps=1e-05, momentum=0.1, affine=True, track_running_stats=True)
            (1): SiLU()
            (2): Conv2d(256, 128, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
          )
          (h_upd): Identity()
          (x_upd): Identity()
          (emb_layers): Sequential(
            (0): SiLU()
            (1): Linear(in_features=256, out_features=256, bias=True)
          )
          (out_layers): Sequential(
            (0): BatchNorm2d(128, eps=1e-05, momentum=0.1, affine=True, track_running_stats=True)
            (1): SiLU()
            (2): Dropout(p=0.2, inplace=False)
            (3): Conv2d(128, 128, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
          )
          (skip_connection): Conv2d(256, 128, kernel_size=(1, 1), stride=(1, 1))
        )
      )
      (8): EmbedSequential(
        (0): ResBlock(
          (in_layers): Sequential(
            (0): BatchNorm2d(192, eps=1e-05, momentum=0.1, affine=True, track_running_stats=True)
            (1): SiLU()
            (2): Conv2d(192, 128, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
          )
          (h_upd): Identity()
          (x_upd): Identity()
          (emb_layers): Sequential(
            (0): SiLU()
            (1): Linear(in_features=256, out_features=256, bias=True)
          )
          (out_layers): Sequential(
            (0): BatchNorm2d(128, eps=1e-05, momentum=0.1, affine=True, track_running_stats=True)
            (1): SiLU()
            (2): Dropout(p=0.2, inplace=False)
            (3): Conv2d(128, 128, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
          )
          (skip_connection): Conv2d(192, 128, kernel_size=(1, 1), stride=(1, 1))
        )
        (1): ResBlock(
          (in_layers): Sequential(
            (0): BatchNorm2d(128, eps=1e-05, momentum=0.1, affine=True, track_running_stats=True)
            (1): SiLU()
            (2): Conv2d(128, 128, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
          )
          (h_upd): Upsample()
          (x_upd): Upsample()
          (emb_layers): Sequential(
            (0): SiLU()
            (1): Linear(in_features=256, out_features=256, bias=True)
          )
          (out_layers): Sequential(
            (0): BatchNorm2d(128, eps=1e-05, momentum=0.1, affine=True, track_running_stats=True)
            (1): SiLU()
            (2): Dropout(p=0.2, inplace=False)
            (3): Conv2d(128, 128, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
          )
          (skip_connection): Identity()
        )
      )
      (9): EmbedSequential(
        (0): ResBlock(
          (in_layers): Sequential(
            (0): BatchNorm2d(192, eps=1e-05, momentum=0.1, affine=True, track_running_stats=True)
            (1): SiLU()
            (2): Conv2d(192, 64, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
          )
          (h_upd): Identity()
          (x_upd): Identity()
          (emb_layers): Sequential(
            (0): SiLU()
            (1): Linear(in_features=256, out_features=128, bias=True)
          )
          (out_layers): Sequential(
            (0): BatchNorm2d(64, eps=1e-05, momentum=0.1, affine=True, track_running_stats=True)
            (1): SiLU()
            (2): Dropout(p=0.2, inplace=False)
            (3): Conv2d(64, 64, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
          )
          (skip_connection): Conv2d(192, 64, kernel_size=(1, 1), stride=(1, 1))
        )
      )
      (10): EmbedSequential(
        (0): ResBlock(
          (in_layers): Sequential(
            (0): BatchNorm2d(128, eps=1e-05, momentum=0.1, affine=True, track_running_stats=True)
            (1): SiLU()
            (2): Conv2d(128, 64, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
          )
          (h_upd): Identity()
          (x_upd): Identity()
          (emb_layers): Sequential(
            (0): SiLU()
            (1): Linear(in_features=256, out_features=128, bias=True)
          )
          (out_layers): Sequential(
            (0): BatchNorm2d(64, eps=1e-05, momentum=0.1, affine=True, track_running_stats=True)
            (1): SiLU()
            (2): Dropout(p=0.2, inplace=False)
            (3): Conv2d(64, 64, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
          )
          (skip_connection): Conv2d(128, 64, kernel_size=(1, 1), stride=(1, 1))
        )
      )
      (11): EmbedSequential(
        (0): ResBlock(
          (in_layers): Sequential(
            (0): BatchNorm2d(128, eps=1e-05, momentum=0.1, affine=True, track_running_stats=True)
            (1): SiLU()
            (2): Conv2d(128, 64, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
          )
          (h_upd): Identity()
          (x_upd): Identity()
          (emb_layers): Sequential(
            (0): SiLU()
            (1): Linear(in_features=256, out_features=128, bias=True)
          )
          (out_layers): Sequential(
            (0): BatchNorm2d(64, eps=1e-05, momentum=0.1, affine=True, track_running_stats=True)
            (1): SiLU()
            (2): Dropout(p=0.2, inplace=False)
            (3): Conv2d(64, 64, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
          )
          (skip_connection): Conv2d(128, 64, kernel_size=(1, 1), stride=(1, 1))
        )
      )
    )
    (out): Sequential(
      (0): BatchNorm2d(64, eps=1e-05, momentum=0.1, affine=True, track_running_stats=True)
      (1): SiLU()
      (2): Conv2d(64, 3, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
    )
  )
)