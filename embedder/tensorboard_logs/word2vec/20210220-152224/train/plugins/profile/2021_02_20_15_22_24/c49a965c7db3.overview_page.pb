?	s+??X@@s+??X@@!s+??X@@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-s+??X@@QKs+?>@1w? ݗ???A#. ?ҥ??I)<hvݛ??*	?K7?A@\@2F
Iterator::Model?ԕ??<??!;?v??L@)??f??}??1??#??;>@:Preprocessing2U
Iterator::Model::ParallelMapV2<??????!?y?R??9@)<??????1?y?R??9@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat? ??!?Vg??A2@)?G?RE??1_?X??-@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate#??~j???!??S?r?1@)?C4??؉?1?????U&@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice??~??@?!b?cO@)??~??@?1b?cO@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?vi?a??!?f?_C?E@)9CqǛ?v?10?^tb?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor??????n?!v9??7?
@)??????n?1v9??7?
@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapk?????!?ғ?1?4@)A??h:;i?1?? 2??@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 93.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.6 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI?E???X@Q??U???Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	QKs+?>@QKs+?>@!QKs+?>@      ??!       "	w? ݗ???w? ݗ???!w? ݗ???*      ??!       2	#. ?ҥ??#. ?ҥ??!#. ?ҥ??:	)<hvݛ??)<hvݛ??!)<hvݛ??B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q?E???X@y??U????"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits?>?8???!?>?8???"=
sequential_160/dense_480/MatMulMatMul?XP?V??!U?????0"=
 sequential_160/dense_482/SoftmaxSoftmax????`??!?`t?t??"=
sequential_160/dense_481/MatMulMatMul?&???O??!6`? Y??0"K
/gradient_tape/sequential_160/dense_482/MatMul_1MatMulH???7??!?_???"K
/gradient_tape/sequential_160/dense_481/MatMul_1MatMul?????!S^?@{??"=
sequential_160/dense_482/MatMulMatMulo???ˠ??!??McM??0"K
-gradient_tape/sequential_160/dense_480/MatMulMatMul???????!??M!̆??0"K
-gradient_tape/sequential_160/dense_481/MatMulMatMul W_ր??!\?=?????0"-
IteratorGetNext/_2_Recv???^S??!X .st??Q      Y@Y[ZZZZZ6@ajiiiiiS@q?Q1?P@y????H???"?
both?Your program is POTENTIALLY input-bound because 93.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?4.6 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?67.2% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 