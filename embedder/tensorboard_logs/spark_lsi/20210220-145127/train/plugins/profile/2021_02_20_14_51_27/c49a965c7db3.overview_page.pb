?	=?Еh9@=?Еh9@!=?Еh9@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-=?Еh9@?=x??b7@1?t??????A?#??????I?t ????*	?x?&1?e@2U
Iterator::Model::ParallelMapV2	?v???!mv?pyH@)	?v???1mv?pyH@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate8??
*???!^?o??89@)X?B?_ˣ?1:?6@:Preprocessing2F
Iterator::Model?[1е??!k
?R`?N@)?9z?ޖ?1?ן8?s)@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatb??vKr??!?;-qM"@)?5?ڋh??1g]p?c?@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice ??*Q?v?!?*8???	@) ??*Q?v?1?*8???	@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?;?%8??!??a??)C@)?(#. ?r?1&f??@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor`?eM,?e?!?g`??i??)`?eM,?e?1?g`??i??:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?`6????!?}???:@)Ժj??c?1????-???:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI? ??buX@Q>??¢S@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?=x??b7@?=x??b7@!?=x??b7@      ??!       "	?t???????t??????!?t??????*      ??!       2	?#???????#??????!?#??????:	?t ?????t ????!?t ????B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q? ??buX@y>??¢S@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogitsg??1*???!g??1*???"<
sequential_59/dense_177/MatMulMatMul?S#w6ͨ?!????;t??0"-
IteratorGetNext/_2_Recv?&6?% ??!?L?@???"<
sequential_59/dense_179/SoftmaxSoftmaxj?-Y@??!?u+Fx??"<
sequential_59/dense_178/MatMulMatMul?,????!R?ttX??0"J
,gradient_tape/sequential_59/dense_178/MatMulMatMuly?(l????!Zc?
q???0"J
,gradient_tape/sequential_59/dense_177/MatMulMatMul????"??!???7Sn??0"<
sequential_59/dense_179/MatMulMatMul)????!?
F%????0"J
.gradient_tape/sequential_59/dense_178/MatMul_1MatMul???l??!?"?q.??"J
.gradient_tape/sequential_59/dense_179/MatMul_1MatMul??,UxN??!??(Ys??Q      Y@Y[ZZZZZ6@ajiiiiiS@q?????#M@y?b???"?
both?Your program is POTENTIALLY input-bound because 92.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?5.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?58.3% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 