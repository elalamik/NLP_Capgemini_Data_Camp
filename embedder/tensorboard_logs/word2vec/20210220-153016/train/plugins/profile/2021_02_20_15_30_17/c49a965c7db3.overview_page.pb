?	??GS=?B@??GS=?B@!??GS=?B@	??dd??????dd????!??dd????"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6??GS=?B@[??	MA@1X?L??~??A??PoF??I?A%?c|@YĲ?C??*	V-??+i@2U
Iterator::Model::ParallelMapV2?q5?+-??!Y?I??B@)?q5?+-??1Y?I??B@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateC???|Ͳ?!F??<B@)˻????1<??S?p@@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?????U??!??il-@)???8?j??1д?ok?(@:Preprocessing2F
Iterator::ModelRI??&¶?!?+r|F@)??>s֧??1??>?i?@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliced?????}?!?`?ē?@)d?????}?1?`?ē?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip??`ʼ?!6ԍ???K@):??8?z?1??Ah?	@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorIIC?s?!G4???@)IIC?s?1G4???@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap??J?.???!-?з??B@)3j?J>vg?1?\2?????:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.8 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9??dd????Iz4?GoX@Q<t*Ð> @Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	[??	MA@[??	MA@![??	MA@      ??!       "	X?L??~??X?L??~??!X?L??~??*      ??!       2	??PoF????PoF??!??PoF??:	?A%?c|@?A%?c|@!?A%?c|@B      ??!       J	Ĳ?C??Ĳ?C??!Ĳ?C??R      ??!       Z	Ĳ?C??Ĳ?C??!Ĳ?C??b      ??!       JGPUY??dd????b qz4?GoX@y<t*Ð> @?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits?W;X?b??!?W;X?b??"=
sequential_181/dense_543/MatMulMatMul?˃?1??!ȹ??-	??0"=
 sequential_181/dense_545/SoftmaxSoftmaxk+%?????!5_bi???"=
sequential_181/dense_544/MatMulMatMul0??uC4??!?U???.??0"K
-gradient_tape/sequential_181/dense_543/MatMulMatMul?(E6?}??!???׮~??0"=
sequential_181/dense_545/MatMulMatMul?"???ǐ?!?????K??0"K
-gradient_tape/sequential_181/dense_544/MatMulMatMulPѐ:???!?L?I?T??0"K
/gradient_tape/sequential_181/dense_544/MatMul_1MatMulǾI"????!?????Q??"K
/gradient_tape/sequential_181/dense_545/MatMul_1MatMul+FVNڌ?!Ҕc%w8??"K
-gradient_tape/sequential_181/dense_545/MatMulMatMul????e??!??0Ť??0Q      Y@Y??(??(.@a?뺮?:U@q?3i??M@y?q	|???"?
both?Your program is POTENTIALLY input-bound because 91.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?5.8 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?60.0% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 