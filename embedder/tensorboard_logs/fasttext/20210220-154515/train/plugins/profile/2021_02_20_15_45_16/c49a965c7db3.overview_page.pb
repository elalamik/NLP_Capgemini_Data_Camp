?	t_?lG:@t_?lG:@!t_?lG:@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-t_?lG:@?Z?QZ8@1??il???A?C?bԵ??I???oa??*	??K7??W@2F
Iterator::Model?? ??ԭ?!?ҿ???N@)??????1?g>?>@:Preprocessing2U
Iterator::Model::ParallelMapV2??X32ȝ?!1>}???>@)??X32ȝ?11>}???>@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatē???G??!????x?3@)`???Y??1o>s?k[/@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?F?ҿ$??!???%@)JΉ=??u?1Y??h?F@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice??Hh˹t?!?+o??i@)??Hh˹t?1?+o??i@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::ZipZ_&????!-@d.C@)?a?[>?r?1:k??/@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorR<??kp?!E??y
?@)R<??kp?1E??y
?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?d??7i??!??CI+@)?yT??e?1M?1???@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noIGE???vX@Q#W??"%@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?Z?QZ8@?Z?QZ8@!?Z?QZ8@      ??!       "	??il?????il???!??il???*      ??!       2	?C?bԵ???C?bԵ??!?C?bԵ??:	???oa?????oa??!???oa??B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb qGE???vX@y#W??"%@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits??ʼ?S??!??ʼ?S??"=
sequential_233/dense_699/MatMulMatMulX??"????!B4?<M??0"-
IteratorGetNext/_2_Recv???\?S??!?\.???"K
-gradient_tape/sequential_233/dense_699/MatMulMatMul??r?}??!?e?? ???0"=
 sequential_233/dense_701/SoftmaxSoftmaxl3?%?m??!???????"=
sequential_233/dense_700/MatMulMatMul{??????!??A????0"K
-gradient_tape/sequential_233/dense_700/MatMulMatMul????$ɘ?!4??ԡ??0"=
sequential_233/dense_701/MatMulMatMul??????!?-;ms???0"K
/gradient_tape/sequential_233/dense_700/MatMul_1MatMul?r?
???!?4&D$??"K
/gradient_tape/sequential_233/dense_701/MatMul_1MatMul??? @???!3P2????Q      Y@Y[ZZZZZ6@ajiiiiiS@q?F????P@y??U?????"?
both?Your program is POTENTIALLY input-bound because 92.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?5.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?67.5% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 