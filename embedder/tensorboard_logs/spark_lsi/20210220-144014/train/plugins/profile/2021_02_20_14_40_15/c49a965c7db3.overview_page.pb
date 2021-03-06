?	?fHŋ?@?fHŋ?@!?fHŋ?@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-?fHŋ?@?l????<@1??ܵ?|??At(CUL???I?$w?D???*	??C?l?S@2U
Iterator::Model::ParallelMapV2?.oך?!g4?@@)?.oך?1g4?@@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatD??]L??!Pd??w8@)?Z
H???11?4@:Preprocessing2F
Iterator::Model???<????!k?&/A?H@)??P???1$D4@/@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceU/??d?{?!??XTN!@)U/??d?{?1??XTN!@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate~??E}???!??*?-1@)?Ɍ??^{?1:?p??!@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip??ao??!??оvI@)???s??r?1ȱ?<և@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorVJ??ci?!??y?ۢ@)VJ??ci?1??y?ۢ@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap????Qِ?!h????4@)O??唀h?1:?E??@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI-???dX@QXz]??g@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?l????<@?l????<@!?l????<@      ??!       "	??ܵ?|????ܵ?|??!??ܵ?|??*      ??!       2	t(CUL???t(CUL???!t(CUL???:	?$w?D????$w?D???!?$w?D???B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q-???dX@yXz]??g@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogitsʕᑛ)??!ʕᑛ)??";
sequential_15/dense_45/MatMulMatMul=3????!??ؙˬ??0"-
IteratorGetNext/_2_Recv?W)????!N??Ī??";
sequential_15/dense_46/MatMulMatMul?gq????!?}0`h??0";
sequential_15/dense_47/SoftmaxSoftmax?3?<-m??!CdŴ???"I
+gradient_tape/sequential_15/dense_46/MatMulMatMulv<??̒?!zf?'??0"I
+gradient_tape/sequential_15/dense_45/MatMulMatMul?@?????!&n>?E0??0";
sequential_15/dense_47/MatMulMatMul?զq??!?K?`7??0"I
-gradient_tape/sequential_15/dense_47/MatMul_1MatMul?????$??!?Z7??9??"I
-gradient_tape/sequential_15/dense_46/MatMul_1MatMul)????_??!?NO ?$??Q      Y@Y??(??(.@a?뺮?:U@q?3A??S@y?I*?OC??"?
both?Your program is POTENTIALLY input-bound because 91.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?5.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?79.0% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 